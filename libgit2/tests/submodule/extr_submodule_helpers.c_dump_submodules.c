
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int git_submodule_foreach (int *,int ,int *) ;
 int print_submodules ;

void dump_submodules(git_repository *repo)
{
 git_submodule_foreach(repo, print_submodules, ((void*)0));
}
