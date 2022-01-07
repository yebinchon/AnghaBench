
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,char*,...) ;

void test_buf_basic__printf(void)
{
 git_buf buf2 = GIT_BUF_INIT;
 git_buf_printf(&buf2, "%s %s %d ", "shoop", "da", 23);
 cl_assert(git_buf_oom(&buf2) == 0);
 cl_assert_equal_s(git_buf_cstr(&buf2), "shoop da 23 ");

 git_buf_printf(&buf2, "%s %d", "woop", 42);
 cl_assert(git_buf_oom(&buf2) == 0);
 cl_assert_equal_s(git_buf_cstr(&buf2), "shoop da 23 woop 42");
 git_buf_dispose(&buf2);
}
