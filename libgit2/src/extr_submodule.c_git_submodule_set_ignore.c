
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule_ignore_t ;
typedef int git_repository ;


 int ARRAY_SIZE (int ) ;
 int _sm_ignore_map ;
 int assert (int) ;
 int write_mapped_var (int *,char const*,int ,int ,char*,int ) ;

int git_submodule_set_ignore(git_repository *repo, const char *name, git_submodule_ignore_t ignore)
{
 assert(repo && name);

 return write_mapped_var(repo, name, _sm_ignore_map, ARRAY_SIZE(_sm_ignore_map), "ignore", ignore);
}
