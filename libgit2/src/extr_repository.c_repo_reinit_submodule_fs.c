
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_repository ;


 int GIT_UNUSED (void*) ;
 int git_error_clear () ;
 int git_repository_free (int *) ;
 scalar_t__ git_repository_reinit_filesystem (int *,int) ;
 scalar_t__ git_submodule_open (int **,int *) ;

__attribute__((used)) static int repo_reinit_submodule_fs(git_submodule *sm, const char *n, void *p)
{
 git_repository *smrepo = ((void*)0);
 GIT_UNUSED(n); GIT_UNUSED(p);

 if (git_submodule_open(&smrepo, sm) < 0 ||
  git_repository_reinit_filesystem(smrepo, 1) < 0)
  git_error_clear();
 git_repository_free(smrepo);

 return 0;
}
