
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_repository ;


 int git_submodule__open (int **,int *,int) ;

int git_submodule_open_bare(git_repository **subrepo, git_submodule *sm)
{
 return git_submodule__open(subrepo, sm, 1);
}
