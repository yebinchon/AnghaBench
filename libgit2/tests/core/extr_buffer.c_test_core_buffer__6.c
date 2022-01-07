
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
 int git_buf_sets (int *,char*) ;
 int git_buf_swap (int *,int *) ;

void test_core_buffer__6(void)
{
 git_buf a = GIT_BUF_INIT;
 git_buf b = GIT_BUF_INIT;

 git_buf_sets(&a, "foo");
 cl_assert(git_buf_oom(&a) == 0);
 git_buf_sets(&b, "bar");
 cl_assert(git_buf_oom(&b) == 0);

 cl_assert_equal_s("foo", git_buf_cstr(&a));
 cl_assert_equal_s("bar", git_buf_cstr(&b));

 git_buf_swap(&a, &b);

 cl_assert_equal_s("bar", git_buf_cstr(&a));
 cl_assert_equal_s("foo", git_buf_cstr(&b));

 git_buf_dispose(&a);
 git_buf_dispose(&b);
}
