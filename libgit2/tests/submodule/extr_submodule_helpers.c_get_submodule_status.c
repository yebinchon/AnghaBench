
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_SUBMODULE_IGNORE_UNSPECIFIED ;
 int assert (int) ;
 int cl_git_pass (int ) ;
 int git_submodule_status (unsigned int*,int *,char const*,int ) ;

unsigned int get_submodule_status(git_repository *repo, const char *name)
{
 unsigned int status = 0;

 assert(repo && name);

 cl_git_pass(git_submodule_status(&status, repo, name, GIT_SUBMODULE_IGNORE_UNSPECIFIED));

 return status;
}
