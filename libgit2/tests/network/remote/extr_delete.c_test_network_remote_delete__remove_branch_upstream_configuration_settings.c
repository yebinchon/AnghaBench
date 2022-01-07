
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int assert_config_entry_existence (int ,char*,int) ;
 int cl_git_pass (int ) ;
 int git_remote_delete (int ,char*) ;

void test_network_remote_delete__remove_branch_upstream_configuration_settings(void)
{
 assert_config_entry_existence(_repo, "branch.mergeless.remote", 1);
 assert_config_entry_existence(_repo, "branch.master.remote", 1);

 cl_git_pass(git_remote_delete(_repo, "test"));

 assert_config_entry_existence(_repo, "branch.mergeless.remote", 0);
 assert_config_entry_existence(_repo, "branch.mergeless.merge", 0);
 assert_config_entry_existence(_repo, "branch.master.remote", 0);
 assert_config_entry_existence(_repo, "branch.master.merge", 0);
}
