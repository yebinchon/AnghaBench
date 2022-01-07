
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int buf ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__whitespace_not_required_around_assignment(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config14")));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "a.b"));
 cl_assert_equal_s("c", git_buf_cstr(&buf));
 git_buf_clear(&buf);

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "d.e"));
 cl_assert_equal_s("f", git_buf_cstr(&buf));

 git_config_free(cfg);
}
