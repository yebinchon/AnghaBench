
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_blob_create_from_workdir (int *,int ,char*) ;
 int git_blob_filter (TYPE_1__*,int *,char*,int *) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 int git_blob_rawcontent (int *) ;
 int git_buf_dispose (TYPE_1__*) ;

void test_filter_blob__ident(void)
{
 git_oid id;
 git_blob *blob;
 git_buf buf = { 0 };

 cl_git_mkfile("crlf/test.ident", "Some text\n$Id$\nGoes there\n");
 cl_git_pass(git_blob_create_from_workdir(&id, g_repo, "test.ident"));
 cl_git_pass(git_blob_lookup(&blob, g_repo, &id));
 cl_assert_equal_s(
  "Some text\n$Id$\nGoes there\n", git_blob_rawcontent(blob));
 git_blob_free(blob);

 cl_git_mkfile("crlf/test.ident", "Some text\n$Id: Any old just you want$\nGoes there\n");
 cl_git_pass(git_blob_create_from_workdir(&id, g_repo, "test.ident"));
 cl_git_pass(git_blob_lookup(&blob, g_repo, &id));
 cl_assert_equal_s(
  "Some text\n$Id$\nGoes there\n", git_blob_rawcontent(blob));

 cl_git_pass(git_blob_filter(&buf, blob, "filter.bin", ((void*)0)));
 cl_assert_equal_s(
  "Some text\n$Id$\nGoes there\n", buf.ptr);

 cl_git_pass(git_blob_filter(&buf, blob, "filter.identcrlf", ((void*)0)));
 cl_assert_equal_s(
  "Some text\r\n$Id: 3164f585d548ac68027d22b104f2d8100b2b6845 $\r\nGoes there\r\n", buf.ptr);

 cl_git_pass(git_blob_filter(&buf, blob, "filter.identlf", ((void*)0)));
 cl_assert_equal_s(
  "Some text\n$Id: 3164f585d548ac68027d22b104f2d8100b2b6845 $\nGoes there\n", buf.ptr);

 git_buf_dispose(&buf);
 git_blob_free(blob);

}
