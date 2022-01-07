
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_config ;
 int g_repo ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_get_entry (TYPE_1__**,int ,char*) ;
 int git_config_rename_section (int ,char*,char*) ;

void test_config_rename__can_rename(void)
{
 git_config_entry *ce;

 cl_git_pass(git_config_get_entry(
  &ce, g_config, "branch.track-local.remote"));
 cl_assert_equal_s(".", ce->value);
 git_config_entry_free(ce);

 cl_git_fail(git_config_get_entry(
  &ce, g_config, "branch.local-track.remote"));

 cl_git_pass(git_config_rename_section(
  g_repo, "branch.track-local", "branch.local-track"));

 cl_git_pass(git_config_get_entry(
  &ce, g_config, "branch.local-track.remote"));
 cl_assert_equal_s(".", ce->value);
 git_config_entry_free(ce);

 cl_git_fail(git_config_get_entry(
  &ce, g_config, "branch.track-local.remote"));
}
