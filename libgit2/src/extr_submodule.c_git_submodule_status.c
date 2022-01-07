
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule_ignore_t ;
typedef int git_submodule ;
typedef int git_repository ;


 int assert (int ) ;
 int git_submodule__status (unsigned int*,int *,int *,int *,int *,int ) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int *,char const*) ;

int git_submodule_status(unsigned int *status, git_repository *repo, const char *name, git_submodule_ignore_t ignore)
{
 git_submodule *sm;
 int error;

 assert(status && repo && name);

 if ((error = git_submodule_lookup(&sm, repo, name)) < 0)
  return error;

 error = git_submodule__status(status, ((void*)0), ((void*)0), ((void*)0), sm, ignore);
 git_submodule_free(sm);

 return error;
}
