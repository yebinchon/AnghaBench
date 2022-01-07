
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int git_config ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int buf ;
 int cl_assert (int) ;
 int cl_assert_equal_b (int,int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_config_add_file_ondisk (int *,int ,int ,int *,int ) ;
 int git_config_free (int *) ;
 int git_config_get_bool (int*,int *,char*) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_get_int64 (scalar_t__*,int *,char*) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_new (int **) ;
 int git_config_open_level (int **,int *,int ) ;

void test_config_read__simple_read_from_specific_level(void)
{
 git_config *cfg, *cfg_specific;
 int i;
 int64_t l, expected = +9223372036854775803;

 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config18"),
  GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config19"),
  GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 0));

 cl_git_pass(git_config_open_level(&cfg_specific, cfg, GIT_CONFIG_LEVEL_GLOBAL));

 cl_git_pass(git_config_get_int32(&i, cfg_specific, "core.int32global"));
 cl_assert_equal_i(28, i);
 cl_git_pass(git_config_get_int64(&l, cfg_specific, "core.int64global"));
 cl_assert(l == expected);
 cl_git_pass(git_config_get_bool(&i, cfg_specific, "core.boolglobal"));
 cl_assert_equal_b(1, i);
 cl_git_pass(git_config_get_string_buf(&buf, cfg_specific, "core.stringglobal"));
 cl_assert_equal_s("I'm a global config value!", git_buf_cstr(&buf));

 git_config_free(cfg_specific);
 git_config_free(cfg);
}
