
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int assert (int) ;
 int write_var (int *,char const*,char*,char const*) ;

int git_submodule_set_branch(git_repository *repo, const char *name, const char *branch)
{

 assert(repo && name);

 return write_var(repo, name, "branch", branch);
}
