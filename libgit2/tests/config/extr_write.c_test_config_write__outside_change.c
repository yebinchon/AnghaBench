
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int *,int *,char*) ;
 int git_config_open_ondisk (int **,char const*) ;
 int git_config_set_int32 (int *,char*,int) ;

void test_config_write__outside_change(void)
{
 int32_t tmp;
 git_config *cfg;
 const char *filename = "config-ext-change";

 cl_git_mkfile(filename, "[old]\nvalue = 5\n");

 cl_git_pass(git_config_open_ondisk(&cfg, filename));

 cl_git_pass(git_config_get_int32(&tmp, cfg, "old.value"));


 cl_git_mkfile(filename, "[old]\nvalue = 6\n");

 cl_git_pass(git_config_set_int32(cfg, "new.value", 7));

 cl_git_pass(git_config_get_int32(&tmp, cfg, "old.value"));
 cl_assert_equal_i(6, tmp);

 git_config_free(cfg);
}
