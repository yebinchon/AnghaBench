
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int member_0; } ;
typedef TYPE_1__ git_strarray ;


 int _remote_name ;
 int _repo ;
 int assert_config_entry_value (int ,char*,char*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_remote_rename (TYPE_1__*,int ,int ,char*) ;
 int git_strarray_free (TYPE_1__*) ;

void test_network_remote_rename__renaming_a_remote_updates_branch_related_configuration_entries(void)
{
 git_strarray problems = {0};

 assert_config_entry_value(_repo, "branch.master.remote", "test");

 cl_git_pass(git_remote_rename(&problems, _repo, _remote_name, "just/renamed"));
 cl_assert_equal_i(0, problems.count);
 git_strarray_free(&problems);

 assert_config_entry_value(_repo, "branch.master.remote", "just/renamed");
}
