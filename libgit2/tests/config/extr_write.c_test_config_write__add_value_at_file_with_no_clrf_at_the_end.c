
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_int32 (int *,char*,int) ;

void test_config_write__add_value_at_file_with_no_clrf_at_the_end(void)
{
 git_config *cfg;
 int i;

 cl_git_pass(git_config_open_ondisk(&cfg, "config17"));
 cl_git_pass(git_config_set_int32(cfg, "core.newline", 7));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config17"));
 cl_git_pass(git_config_get_int32(&i, cfg, "core.newline"));
 cl_assert_equal_i(7, i);

 git_config_free(cfg);
}
