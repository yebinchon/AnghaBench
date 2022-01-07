
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int level; int value; int name; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int GIT_CONFIG_LEVEL_SYSTEM ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_add_file_ondisk (int *,int ,int ,int *,int ) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_entry (TYPE_1__**,int *,char*) ;
 int git_config_new (int **) ;

void test_config_read__read_git_config_entry(void)
{
 git_config *cfg;
 git_config_entry *entry;

 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config9"),
  GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 0));

 cl_git_pass(git_config_get_entry(&entry, cfg, "core.dummy2"));
 cl_assert_equal_s("core.dummy2", entry->name);
 cl_assert_equal_s("42", entry->value);
 cl_assert_equal_i(GIT_CONFIG_LEVEL_SYSTEM, entry->level);

 git_config_entry_free(entry);
 git_config_free(cfg);
}
