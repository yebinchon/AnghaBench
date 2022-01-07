
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git__percent_decode (int *,char const*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;

__attribute__((used)) static void check_percent_decoding(const char *expected_result, const char *input)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git__percent_decode(&buf, input));
 cl_assert_equal_s(expected_result, git_buf_cstr(&buf));

 git_buf_dispose(&buf);
}
