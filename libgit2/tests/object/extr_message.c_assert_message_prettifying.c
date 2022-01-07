
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_message_prettify (int *,char*,int,char) ;

__attribute__((used)) static void assert_message_prettifying(char *expected_output, char *input, int strip_comments)
{
 git_buf prettified_message = GIT_BUF_INIT;

 git_message_prettify(&prettified_message, input, strip_comments, '#');
 cl_assert_equal_s(expected_output, git_buf_cstr(&prettified_message));

 git_buf_dispose(&prettified_message);
}
