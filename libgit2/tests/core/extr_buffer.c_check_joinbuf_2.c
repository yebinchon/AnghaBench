
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join (int *,char,char const*,char const*) ;
 scalar_t__ git_buf_oom (int *) ;

__attribute__((used)) static void
check_joinbuf_2(
 const char *a,
 const char *b,
 const char *expected)
{
 char sep = '/';
 git_buf buf = GIT_BUF_INIT;

 git_buf_join(&buf, sep, a, b);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(expected, git_buf_cstr(&buf));
 git_buf_dispose(&buf);
}
