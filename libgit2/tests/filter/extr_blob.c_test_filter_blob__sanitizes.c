
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_5__ {int ptr; int size; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_blob_filter (TYPE_1__*,int *,char*,int *) ;
 int git_blob_free (int *) ;
 int git_blob_rawcontent (int *) ;
 int git_blob_rawsize (int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_revparse_single (int **,int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;

void test_filter_blob__sanitizes(void)
{
 git_blob *blob;
 git_buf buf;

 cl_git_pass(git_revparse_single(
  (git_object **)&blob, g_repo, "e69de29"));

 cl_assert_equal_i(0, git_blob_rawsize(blob));
 cl_assert_equal_s("", git_blob_rawcontent(blob));

 memset(&buf, 0, sizeof(git_buf));
 cl_git_pass(git_blob_filter(&buf, blob, "file.bin", ((void*)0)));
 cl_assert_equal_sz(0, buf.size);
 cl_assert_equal_s("", buf.ptr);
 git_buf_dispose(&buf);

 memset(&buf, 0, sizeof(git_buf));
 cl_git_pass(git_blob_filter(&buf, blob, "file.crlf", ((void*)0)));
 cl_assert_equal_sz(0, buf.size);
 cl_assert_equal_s("", buf.ptr);
 git_buf_dispose(&buf);

 memset(&buf, 0, sizeof(git_buf));
 cl_git_pass(git_blob_filter(&buf, blob, "file.lf", ((void*)0)));
 cl_assert_equal_sz(0, buf.size);
 cl_assert_equal_s("", buf.ptr);
 git_buf_dispose(&buf);

 git_blob_free(blob);
}
