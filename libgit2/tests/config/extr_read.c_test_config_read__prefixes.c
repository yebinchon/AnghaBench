
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

void test_config_read__prefixes(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config9")));
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "remote.ab.url"));
 cl_assert_equal_s("http://example.com/git/ab", git_buf_cstr(&buf));
 git_buf_clear(&buf);

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "remote.abba.url"));
 cl_assert_equal_s("http://example.com/git/abba", git_buf_cstr(&buf));

 git_config_free(cfg);
}
