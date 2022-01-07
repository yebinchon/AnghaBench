
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_7__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ git_blob_filter_options ;
typedef int git_blob ;


 int ALL_LF_TEXT_RAW ;
 int GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES ;
 TYPE_2__ GIT_BLOB_FILTER_OPTIONS_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_blob_filter (TYPE_1__*,int *,char*,TYPE_2__*) ;
 int git_blob_free (int *) ;
 int git_blob_rawcontent (int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_revparse_single (int **,int ,char*) ;

void test_filter_systemattrs__disables_system_attributes(void)
{
 git_blob *blob;
 git_buf buf = { 0 };
 git_blob_filter_options opts = GIT_BLOB_FILTER_OPTIONS_INIT;

 opts.flags |= GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES;

 cl_git_pass(git_revparse_single(
  (git_object **)&blob, g_repo, "799770d"));

 cl_assert_equal_s(ALL_LF_TEXT_RAW, git_blob_rawcontent(blob));

 cl_git_pass(git_blob_filter(&buf, blob, "file.bin", &opts));
 cl_assert_equal_s(ALL_LF_TEXT_RAW, buf.ptr);


 cl_git_pass(git_blob_filter(&buf, blob, "file.crlf", &opts));
 cl_assert_equal_s(ALL_LF_TEXT_RAW, buf.ptr);

 cl_git_pass(git_blob_filter(&buf, blob, "file.lf", &opts));
 cl_assert_equal_s(ALL_LF_TEXT_RAW, buf.ptr);

 git_buf_dispose(&buf);
 git_blob_free(blob);
}
