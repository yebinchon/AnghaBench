
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int git_config_snapshot (int **,int *) ;
 int git_repository_config__weakptr (int **,int *) ;

int git_repository_config_snapshot(git_config **out, git_repository *repo)
{
 int error;
 git_config *weak;

 if ((error = git_repository_config__weakptr(&weak, repo)) < 0)
  return error;

 return git_config_snapshot(out, weak);
}
