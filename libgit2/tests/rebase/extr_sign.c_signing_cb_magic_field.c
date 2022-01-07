
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_OK ;
 int cl_assert_equal_b (int,int ) ;
 int cl_assert_equal_p (int *,void*) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int expected_commit_content ;
 int git_buf_is_allocated (int *) ;
 int git_buf_set (int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int signing_cb_magic_field(
 git_buf *signature,
 git_buf *signature_field,
 const char *commit_content,
 void *payload)
{
 const char *signature_content = "magic word: pretty please";
 const char *signature_field_content = "magicsig";

 cl_assert_equal_b(0, git_buf_is_allocated(signature));
 cl_assert_equal_b(0, git_buf_is_allocated(signature_field));
 cl_assert_equal_s(expected_commit_content, commit_content);
 cl_assert_equal_p(((void*)0), payload);

 cl_git_pass(git_buf_set(signature, signature_content,
  strlen(signature_content) + 1));
 cl_git_pass(git_buf_set(signature_field, signature_field_content,
  strlen(signature_field_content) + 1));

 return GIT_OK;
}
