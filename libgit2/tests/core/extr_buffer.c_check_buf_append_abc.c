
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
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_puts (int *,char const*) ;
 int git_buf_sets (int *,char const*) ;

__attribute__((used)) static void
check_buf_append_abc(
 const char* buf_a,
 const char* buf_b,
 const char* buf_c,
 const char* expected_ab,
 const char* expected_abc,
 const char* expected_abca,
 const char* expected_abcab,
 const char* expected_abcabc)
{
 git_buf buf = GIT_BUF_INIT;

 git_buf_sets(&buf, buf_a);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(buf_a, git_buf_cstr(&buf));

 git_buf_puts(&buf, buf_b);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(expected_ab, git_buf_cstr(&buf));

 git_buf_puts(&buf, buf_c);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(expected_abc, git_buf_cstr(&buf));

 git_buf_puts(&buf, buf_a);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(expected_abca, git_buf_cstr(&buf));

 git_buf_puts(&buf, buf_b);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(expected_abcab, git_buf_cstr(&buf));

 git_buf_puts(&buf, buf_c);
 cl_assert(git_buf_oom(&buf) == 0);
 cl_assert_equal_s(expected_abcabc, git_buf_cstr(&buf));

 git_buf_dispose(&buf);
}
