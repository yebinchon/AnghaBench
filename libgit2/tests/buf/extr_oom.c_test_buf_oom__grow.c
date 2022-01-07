
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int) ;
 int git_buf_dispose (int *) ;
 int git_buf_grow (int *,int) ;
 int git_buf_oom (int *) ;

void test_buf_oom__grow(void)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_grow(&buf, 42));
 cl_assert(!git_buf_oom(&buf));

 cl_assert(git_buf_grow(&buf, 101) == -1);
 cl_assert(git_buf_oom(&buf));

 git_buf_dispose(&buf);
}
