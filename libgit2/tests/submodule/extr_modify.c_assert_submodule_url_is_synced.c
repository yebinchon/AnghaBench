
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_repository ;


 int assert_config_entry_value (int *,char const*,int ) ;
 int cl_git_pass (int ) ;
 int * g_repo ;
 int git_repository_free (int *) ;
 int git_submodule_open (int **,int *) ;
 int git_submodule_url (int *) ;

__attribute__((used)) static void assert_submodule_url_is_synced(
 git_submodule *sm, const char *parent_key, const char *child_key)
{
 git_repository *smrepo;

 assert_config_entry_value(g_repo, parent_key, git_submodule_url(sm));

 cl_git_pass(git_submodule_open(&smrepo, sm));
 assert_config_entry_value(smrepo, child_key, git_submodule_url(sm));
 git_repository_free(smrepo);
}
