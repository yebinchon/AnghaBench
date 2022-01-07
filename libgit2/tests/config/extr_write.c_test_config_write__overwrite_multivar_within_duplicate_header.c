
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_entry ;
typedef int git_config ;


 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char const*,char const*) ;
 int cl_git_pass (int ) ;
 int git_config_entry_free (int *) ;
 int git_config_free (int *) ;
 int git_config_get_entry (int **,int *,char const*) ;
 int git_config_get_multivar_foreach (int *,char const*,int *,int ,int*) ;
 int git_config_open_ondisk (int **,char const*) ;
 int git_config_set_multivar (int *,char const*,char*,char*) ;
 int multivar_cb ;

void test_config_write__overwrite_multivar_within_duplicate_header(void)
{
 const char *file_name = "config-duplicate-header";
 const char *entry_name = "remote.origin.url";
 git_config *cfg;
 git_config_entry *entry;
 int n = 0;


 const char *file_content =
  "[remote \"origin\"]\n" "	url = \"bar\"\n" "[branch \"master\"]\n" "	remote = \"origin\"\n" "[remote \"origin\"]\n" "	url = \"foo\"\n";







 cl_git_mkfile(file_name, file_content);
 cl_git_pass(git_config_open_ondisk(&cfg, file_name));
 cl_git_pass(git_config_get_entry(&entry, cfg, entry_name));


 cl_git_pass(git_config_set_multivar(cfg, entry_name, ".*", "newurl"));
 git_config_entry_free(entry);
 git_config_free(cfg);


 cl_git_pass(git_config_open_ondisk(&cfg, file_name));
 cl_git_pass(git_config_get_multivar_foreach(cfg, entry_name, ((void*)0), multivar_cb, &n));
 cl_assert_equal_i(2, n);


 git_config_free(cfg);
}
