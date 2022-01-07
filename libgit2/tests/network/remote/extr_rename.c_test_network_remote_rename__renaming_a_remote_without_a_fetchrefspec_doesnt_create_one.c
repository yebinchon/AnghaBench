
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;
typedef int git_config ;


 int _remote_name ;
 int _repo ;
 int assert_config_entry_existence (int ,char*,int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_config_delete_entry (int *,char*) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_remote_rename (TYPE_1__*,int ,int ,char*) ;
 int git_repository_config__weakptr (int **,int ) ;
 int git_strarray_free (TYPE_1__*) ;

void test_network_remote_rename__renaming_a_remote_without_a_fetchrefspec_doesnt_create_one(void)
{
 git_config *config;
 git_remote *remote;
 git_strarray problems = {0};

 cl_git_pass(git_repository_config__weakptr(&config, _repo));
 cl_git_pass(git_config_delete_entry(config, "remote.test.fetch"));

 cl_git_pass(git_remote_lookup(&remote, _repo, "test"));
 git_remote_free(remote);

 assert_config_entry_existence(_repo, "remote.test.fetch", 0);

 cl_git_pass(git_remote_rename(&problems, _repo, _remote_name, "just/renamed"));
 cl_assert_equal_i(0, problems.count);
 git_strarray_free(&problems);

 assert_config_entry_existence(_repo, "remote.just/renamed.fetch", 0);
}
