
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int assert (int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_path_fromurl (int *,char const*) ;

__attribute__((used)) static void check_fromurl(const char *expected_result, const char *input, int should_fail)
{
 git_buf buf = GIT_BUF_INIT;

 assert(should_fail || expected_result);

 if (!should_fail) {
  cl_git_pass(git_path_fromurl(&buf, input));
  cl_assert_equal_s(expected_result, git_buf_cstr(&buf));
 } else
  cl_git_fail(git_path_fromurl(&buf, input));

 git_buf_dispose(&buf);
}
