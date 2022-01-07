
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_4__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;


 int ALL_CRLF_TEXT_AS_CRLF ;
 int ALL_CRLF_TEXT_RAW ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_blob_filter (TYPE_1__*,int *,char*,int *) ;
 int git_blob_free (int *) ;
 int git_blob_rawcontent (int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_revparse_single (int **,int ,char*) ;

void test_filter_blob__all_crlf(void)
{
 git_blob *blob;
 git_buf buf = { 0 };

 cl_git_pass(git_revparse_single(
  (git_object **)&blob, g_repo, "a9a2e891"));

 cl_assert_equal_s(ALL_CRLF_TEXT_RAW, git_blob_rawcontent(blob));

 cl_git_pass(git_blob_filter(&buf, blob, "file.bin", ((void*)0)));

 cl_assert_equal_s(ALL_CRLF_TEXT_RAW, buf.ptr);

 cl_git_pass(git_blob_filter(&buf, blob, "file.crlf", ((void*)0)));


 cl_assert_equal_s(ALL_CRLF_TEXT_AS_CRLF, buf.ptr);

 cl_git_pass(git_blob_filter(&buf, blob, "file.lf", ((void*)0)));


 cl_assert_equal_s(ALL_CRLF_TEXT_AS_CRLF, buf.ptr);

 git_buf_dispose(&buf);
 git_blob_free(blob);
}
