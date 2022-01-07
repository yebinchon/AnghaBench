
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_submodule_add_to_index (int *,int) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char const*) ;

__attribute__((used)) static void add_submodule_to_index(const char *name)
{
 git_submodule *sm;
 cl_git_pass(git_submodule_lookup(&sm, g_repo, name));
 cl_git_pass(git_submodule_add_to_index(sm, 1));
 git_submodule_free(sm);
}
