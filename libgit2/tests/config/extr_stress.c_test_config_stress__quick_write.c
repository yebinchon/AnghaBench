
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int cl_msleep (int) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int*,int *,char const*) ;
 int git_config_open_ondisk (int **,char const*) ;
 int git_config_set_int32 (int *,char const*,int) ;

void test_config_stress__quick_write(void)
{
 git_config *config_w, *config_r;
 const char *path = "./config-quick-write";
 const char *key = "quick.write";
 int32_t i;


 cl_git_pass(git_config_open_ondisk(&config_w, path));
 cl_git_pass(git_config_open_ondisk(&config_r, path));


 for (i = 0; i < 10; i++) {
  int32_t val;
  cl_git_pass(git_config_set_int32(config_w, key, i));
  cl_msleep(1);
  cl_git_pass(git_config_get_int32(&val, config_r, key));
  cl_assert_equal_i(i, val);
 }

 git_config_free(config_r);
 git_config_free(config_w);
}
