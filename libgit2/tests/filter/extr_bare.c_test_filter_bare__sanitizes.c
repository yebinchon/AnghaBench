
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_5__ {int ptr; int size; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_git_pass (int ) ;
 int filter_opts ;
 int g_repo ;
 int git_blob_filter (TYPE_1__*,int *,char*,int *) ;
 int git_blob_free (int *) ;
 int git_blob_rawcontent (int *) ;
 int git_blob_rawsize (int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_revparse_single (int **,int ,char*) ;

void test_filter_bare__sanitizes(void)
{
 git_blob *blob;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_revparse_single(
  (git_object **)&blob, g_repo, "e69de29"));

 cl_assert_equal_i(0, git_blob_rawsize(blob));
 cl_assert_equal_s("", git_blob_rawcontent(blob));

 cl_git_pass(git_blob_filter(&buf, blob, "file.bin", &filter_opts));
 cl_assert_equal_sz(0, buf.size);
 cl_assert_equal_s("", buf.ptr);
 git_buf_dispose(&buf);

 cl_git_pass(git_blob_filter(&buf, blob, "file.crlf", &filter_opts));
 cl_assert_equal_sz(0, buf.size);
 cl_assert_equal_s("", buf.ptr);
 git_buf_dispose(&buf);

 cl_git_pass(git_blob_filter(&buf, blob, "file.lf", &filter_opts));
 cl_assert_equal_sz(0, buf.size);
 cl_assert_equal_s("", buf.ptr);
 git_buf_dispose(&buf);

 git_blob_free(blob);
}
