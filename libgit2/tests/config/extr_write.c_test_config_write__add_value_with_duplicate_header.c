
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_assert_equal_s (char const*,char const*) ;
 int cl_git_mkfile (char const*,char const*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char const*) ;
 int git_config_open_ondisk (int **,char const*) ;
 int git_config_set_string (int *,char const*,char const*) ;
 int git_config_snapshot (int **,int *) ;

void test_config_write__add_value_with_duplicate_header(void)
{
 const char *file_name = "config-duplicate-insert";
 const char *entry_name = "foo.c";
 const char *old_val = "old";
 const char *new_val = "new";
 const char *str;
 git_config *cfg, *snapshot;




 const char *file_content =
  "[foo]\n" "  a = b\n" "[other]\n" "  a = b\n" "[foo]\n" "  c = old\n";







 cl_git_mkfile(file_name, file_content);
 cl_git_pass(git_config_open_ondisk(&cfg, file_name));


 cl_git_pass(git_config_snapshot(&snapshot, cfg));
 cl_git_pass(git_config_get_string(&str, snapshot, entry_name));
 cl_assert_equal_s(old_val, str);
 git_config_free(snapshot);


 cl_git_pass(git_config_set_string(cfg, entry_name, new_val));
 git_config_free(cfg);


 cl_git_pass(git_config_open_ondisk(&cfg, file_name));
 cl_git_pass(git_config_snapshot(&snapshot, cfg));
 cl_git_pass(git_config_get_string(&str, snapshot, entry_name));
 cl_assert_equal_s(new_val, str);


 git_config_free(snapshot);
 git_config_free(cfg);
}
