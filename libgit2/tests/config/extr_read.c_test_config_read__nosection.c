
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EINVALIDSPEC ;
 int cl_assert_equal_i (int,int) ;
 int cl_fixture (char*) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (int *) ;
 int git_config_foreach (int *,int ,int*) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;
 int read_nosection_cb ;

void test_config_read__nosection(void)
{
 git_config *cfg;
 git_buf buf = GIT_BUF_INIT;
 int seen = 0;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config-nosection")));
 cl_git_fail_with(git_config_get_string_buf(&buf, cfg, "key"), GIT_EINVALIDSPEC);

 cl_git_pass(git_config_foreach(cfg, read_nosection_cb, &seen));
 cl_assert_equal_i(seen, 1);

 git_buf_dispose(&buf);
 git_config_free(cfg);
}
