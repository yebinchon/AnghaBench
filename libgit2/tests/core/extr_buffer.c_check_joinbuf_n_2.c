
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
 int git_buf_join_n (int *,char,int,char const*) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_sets (int *,char const*) ;

__attribute__((used)) static void
check_joinbuf_n_2(
 const char *a,
 const char *b,
 const char *expected)
{
 char sep = '/';
 git_buf buf = GIT_BUF_INIT;

 git_buf_sets(&buf, a);
 cl_assert(git_buf_oom(&buf) == 0);

 git_buf_join_n(&buf, sep, 1, b);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(expected, git_buf_cstr(&buf));

 git_buf_dispose(&buf);
}
