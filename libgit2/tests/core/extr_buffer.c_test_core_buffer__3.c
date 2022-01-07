
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
 int git_buf_set (int *,int ,int) ;
 int test_4096 ;
 int test_8192 ;

void test_core_buffer__3(void)
{
 git_buf buf = GIT_BUF_INIT;


 git_buf_set(&buf, test_4096, 4096);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(test_4096, git_buf_cstr(&buf));


 git_buf_puts(&buf, test_4096);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(test_8192, git_buf_cstr(&buf));


 git_buf_set(&buf, test_4096, 4096);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(test_4096, git_buf_cstr(&buf));

 git_buf_dispose(&buf);
}
