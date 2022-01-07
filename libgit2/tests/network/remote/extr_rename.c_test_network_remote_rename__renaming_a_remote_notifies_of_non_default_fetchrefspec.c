
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * strings; int count; int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;
typedef int git_config ;


 int _remote_name ;
 int _repo ;
 int assert_config_entry_value (int ,char*,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_remote_rename (TYPE_1__*,int ,int ,char*) ;
 int git_repository_config__weakptr (int **,int ) ;
 int git_strarray_free (TYPE_1__*) ;

void test_network_remote_rename__renaming_a_remote_notifies_of_non_default_fetchrefspec(void)
{
 git_config *config;
 git_remote *remote;
 git_strarray problems = {0};

 cl_git_pass(git_repository_config__weakptr(&config, _repo));
 cl_git_pass(git_config_set_string(config, "remote.test.fetch", "+refs/*:refs/*"));
 cl_git_pass(git_remote_lookup(&remote, _repo, "test"));
 git_remote_free(remote);

 cl_git_pass(git_remote_rename(&problems, _repo, _remote_name, "just/renamed"));
 cl_assert_equal_i(1, problems.count);
 cl_assert_equal_s("+refs/*:refs/*", problems.strings[0]);
 git_strarray_free(&problems);

 assert_config_entry_value(_repo, "remote.just/renamed.fetch", "+refs/*:refs/*");

 git_strarray_free(&problems);
}
