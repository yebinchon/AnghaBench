
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_len (int *) ;
 int git_buf_rfind (int *,char) ;
 int git_buf_rfind_next (int *,char) ;
 int git_buf_sets (int *,char*) ;

void test_core_buffer__rfind_variants(void)
{
 git_buf a = GIT_BUF_INIT;
 ssize_t len;

 cl_git_pass(git_buf_sets(&a, "/this/is/it/"));

 len = (ssize_t)git_buf_len(&a);

 cl_assert(git_buf_rfind(&a, '/') == len - 1);
 cl_assert(git_buf_rfind_next(&a, '/') == len - 4);

 cl_assert(git_buf_rfind(&a, 'i') == len - 3);
 cl_assert(git_buf_rfind_next(&a, 'i') == len - 3);

 cl_assert(git_buf_rfind(&a, 'h') == 2);
 cl_assert(git_buf_rfind_next(&a, 'h') == 2);

 cl_assert(git_buf_rfind(&a, 'q') == -1);
 cl_assert(git_buf_rfind_next(&a, 'q') == -1);

 git_buf_dispose(&a);
}
