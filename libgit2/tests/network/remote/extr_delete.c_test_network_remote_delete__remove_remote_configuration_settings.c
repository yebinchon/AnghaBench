
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,scalar_t__) ;
 int cl_git_pass (int ) ;
 scalar_t__ count_config_entries_match (int ,char*) ;
 int git_remote_delete (int ,char*) ;

void test_network_remote_delete__remove_remote_configuration_settings(void)
{
 cl_assert(count_config_entries_match(_repo, "remote\\.test\\.+") > 0);

 cl_git_pass(git_remote_delete(_repo, "test"));

 cl_assert_equal_i(0, count_config_entries_match(_repo, "remote\\.test\\.+"));
}
