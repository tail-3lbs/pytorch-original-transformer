
ps -ef | grep -v auto | grep jupyter-lab | awk '{print $2}' | xargs kill

conda activate base
conda remove -n pytorch-transformer --all
conda env create -f environment.yml
conda activate pytorch-transformer

nohup jupyter lab --no-browser --ip=0.0.0.0 --port=8000 > transformer.out 2>&1 &!


