
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_4__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;


 int ALL_LF_TEXT_AS_CRLF ;
 int ALL_LF_TEXT_AS_LF ;
 int ALL_LF_TEXT_RAW ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int filter_opts ;
 int g_repo ;
 int git_blob_filter (TYPE_1__*,int *,char*,int *) ;
 int git_blob_free (int *) ;
 int git_blob_rawcontent (int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_revparse_single (int **,int ,char*) ;

void test_filter_bare__from_lf(void)
{
 git_blob *blob;
 git_buf buf = { 0 };

 cl_git_pass(git_revparse_single(
  (git_object **)&blob, g_repo, "799770d"));

 cl_assert_equal_s(ALL_LF_TEXT_RAW, git_blob_rawcontent(blob));

 cl_git_pass(git_blob_filter(&buf, blob, "file.bin", &filter_opts));

 cl_assert_equal_s(ALL_LF_TEXT_RAW, buf.ptr);

 cl_git_pass(git_blob_filter(&buf, blob, "file.crlf", &filter_opts));


 cl_assert_equal_s(ALL_LF_TEXT_AS_CRLF, buf.ptr);

 cl_git_pass(git_blob_filter(&buf, blob, "file.lf", &filter_opts));


 cl_assert_equal_s(ALL_LF_TEXT_AS_LF, buf.ptr);

 git_buf_dispose(&buf);
 git_blob_free(blob);
}
