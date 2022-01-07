
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int SIZE_MAX ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (int *) ;
 int git_buf_puts (int *,char*) ;
 int git_buf_try_grow (int *,int ,int) ;

void test_core_buffer__dont_hit_infinite_loop_when_resizing(void)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_puts(&buf, "foobar"));






 (void)git_buf_try_grow(&buf, SIZE_MAX, 1);

 git_buf_dispose(&buf);
}
