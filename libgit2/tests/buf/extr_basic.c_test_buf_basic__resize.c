
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_puts (int *,int ) ;
 int strlen (int ) ;
 int test_string ;

void test_buf_basic__resize(void)
{
 git_buf buf1 = GIT_BUF_INIT;
 git_buf_puts(&buf1, test_string);
 cl_assert(git_buf_oom(&buf1) == 0);
 cl_assert_equal_s(git_buf_cstr(&buf1), test_string);

 git_buf_puts(&buf1, test_string);
 cl_assert(strlen(git_buf_cstr(&buf1)) == strlen(test_string) * 2);
 git_buf_dispose(&buf1);
}
