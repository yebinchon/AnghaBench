
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char const*,char const*) ;
 int cl_git_pass (int ) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_entry (TYPE_1__**,int *,char const*) ;
 int git_config_open_ondisk (int **,char const*) ;
 int git_config_set_string (int *,char const*,char*) ;

void test_config_write__overwrite_value_with_duplicate_header(void)
{
 const char *file_name = "config-duplicate-header";
 const char *entry_name = "remote.origin.url";
 git_config *cfg;
 git_config_entry *entry;


 const char *file_content =
  "[remote \"origin\"]\n" "[branch \"master\"]\n" "	remote = \"origin\"\n" "[remote \"origin\"]\n" "	url = \"foo\"\n";






 cl_git_mkfile(file_name, file_content);
 cl_git_pass(git_config_open_ondisk(&cfg, file_name));
 cl_git_pass(git_config_get_entry(&entry, cfg, entry_name));


 cl_git_pass(git_config_set_string(cfg, entry_name, "newurl"));


 git_config_entry_free(entry);
 git_config_free(cfg);
 cl_git_pass(git_config_open_ondisk(&cfg, file_name));
 cl_git_pass(git_config_get_entry(&entry, cfg, entry_name));

 cl_assert_equal_s("newurl", entry->value);


 git_config_entry_free(entry);
 git_config_free(cfg);
}
