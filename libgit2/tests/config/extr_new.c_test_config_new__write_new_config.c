
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int TEST_CONFIG ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;
 int git_config_set_string (int *,char*,char*) ;
 int p_unlink (int ) ;

void test_config_new__write_new_config(void)
{
 git_config *config;
 git_buf buf = GIT_BUF_INIT;

 cl_git_mkfile(TEST_CONFIG, "");
 cl_git_pass(git_config_open_ondisk(&config, TEST_CONFIG));

 cl_git_pass(git_config_set_string(config, "color.ui", "auto"));
 cl_git_pass(git_config_set_string(config, "core.editor", "ed"));

 git_config_free(config);

 cl_git_pass(git_config_open_ondisk(&config, TEST_CONFIG));

 cl_git_pass(git_config_get_string_buf(&buf, config, "color.ui"));
 cl_assert_equal_s("auto", git_buf_cstr(&buf));
 git_buf_clear(&buf);
 cl_git_pass(git_config_get_string_buf(&buf, config, "core.editor"));
 cl_assert_equal_s("ed", git_buf_cstr(&buf));

 git_buf_dispose(&buf);
 git_config_free(config);

 p_unlink(TEST_CONFIG);
}
