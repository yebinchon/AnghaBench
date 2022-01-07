
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_LOCAL ;
 int cl_assert (int) ;
 int cl_assert_equal_b (int,int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_config_add_file_ondisk (int *,char*,int ,int *,int ) ;
 int git_config_free (int *) ;
 int git_config_get_bool (int*,int *,char*) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_get_int64 (scalar_t__*,int *,char*) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_new (int **) ;
 int git_config_open_level (int **,int *,int ) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_config_set_int32 (int *,char*,int) ;
 int git_config_set_int64 (int *,char*,scalar_t__) ;
 int git_config_set_string (int *,char*,char*) ;

void test_config_write__add_value_at_specific_level(void)
{
 git_config *cfg, *cfg_specific;
 int i;
 int64_t l, expected = +9223372036854775803;
 git_buf buf = GIT_BUF_INIT;


 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_add_file_ondisk(cfg, "config9",
  GIT_CONFIG_LEVEL_LOCAL, ((void*)0), 0));
 cl_git_pass(git_config_add_file_ondisk(cfg, "config15",
  GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0));

 cl_git_pass(git_config_open_level(&cfg_specific, cfg, GIT_CONFIG_LEVEL_GLOBAL));

 cl_git_pass(git_config_set_int32(cfg_specific, "core.int32global", 28));
 cl_git_pass(git_config_set_int64(cfg_specific, "core.int64global", expected));
 cl_git_pass(git_config_set_bool(cfg_specific, "core.boolglobal", 1));
 cl_git_pass(git_config_set_string(cfg_specific, "core.stringglobal", "I'm a global config value!"));
 git_config_free(cfg_specific);
 git_config_free(cfg);


 cl_git_pass(git_config_open_ondisk(&cfg, "config15"));

 cl_git_pass(git_config_get_int32(&i, cfg, "core.int32global"));
 cl_assert_equal_i(28, i);
 cl_git_pass(git_config_get_int64(&l, cfg, "core.int64global"));
 cl_assert(l == expected);
 cl_git_pass(git_config_get_bool(&i, cfg, "core.boolglobal"));
 cl_assert_equal_b(1, i);
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "core.stringglobal"));
 cl_assert_equal_s("I'm a global config value!", git_buf_cstr(&buf));

 git_buf_dispose(&buf);
 git_config_free(cfg);
}
