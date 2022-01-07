
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,char*,...) ;

void test_core_buffer__1(void)
{
 git_buf buf = GIT_BUF_INIT;

 git_buf_printf(&buf, "%s %s %d ", "shoop", "da", 23);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s("shoop da 23 ", git_buf_cstr(&buf));

 git_buf_printf(&buf, "%s %d", "woop", 42);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s("shoop da 23 woop 42", git_buf_cstr(&buf));

 git_buf_dispose(&buf);
}
