
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_entry ;
typedef int git_config ;


 int cl_git_fail (int ) ;
 int cl_git_mkfile (char const*,char const*) ;
 int cl_git_pass (int ) ;
 int git_config_delete_entry (int *,char const*) ;
 int git_config_entry_free (int *) ;
 int git_config_free (int *) ;
 int git_config_get_entry (int **,int *,char const*) ;
 int git_config_open_ondisk (int **,char const*) ;

void test_config_write__delete_value_with_duplicate_header(void)
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


 cl_git_pass(git_config_delete_entry(cfg, entry_name));


 git_config_entry_free(entry);
 git_config_free(cfg);
 cl_git_pass(git_config_open_ondisk(&cfg, file_name));
 cl_git_fail(git_config_get_entry(&entry, cfg, entry_name));


 git_config_entry_free(entry);
 git_config_free(cfg);
}
