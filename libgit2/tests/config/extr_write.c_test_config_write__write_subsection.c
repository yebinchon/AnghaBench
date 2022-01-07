
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_string (int *,char*,char*) ;

void test_config_write__write_subsection(void)
{
 git_config *cfg;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_set_string(cfg, "my.own.var", "works"));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "my.own.var"));
 cl_assert_equal_s("works", git_buf_cstr(&buf));

 git_buf_dispose(&buf);
 git_config_free(cfg);
}
