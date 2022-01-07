
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_PASSTHROUGH ;
 int cl_assert_equal_b (int,int ) ;
 int cl_assert_equal_p (int *,void*) ;
 int cl_assert_equal_s (int ,char const*) ;
 int expected_commit_content ;
 int git_buf_is_allocated (int *) ;

int signing_cb_passthrough(
 git_buf *signature,
 git_buf *signature_field,
 const char *commit_content,
 void *payload)
{
 cl_assert_equal_b(0, git_buf_is_allocated(signature));
 cl_assert_equal_b(0, git_buf_is_allocated(signature_field));
 cl_assert_equal_s(expected_commit_content, commit_content);
 cl_assert_equal_p(((void*)0), payload);
 return GIT_PASSTHROUGH;
}
