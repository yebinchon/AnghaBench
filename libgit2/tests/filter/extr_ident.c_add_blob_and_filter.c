
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_filter_list ;
struct TYPE_4__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;


 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_mkfile (char*,char const*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_blob_create_from_workdir (int *,int ,char*) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_filter_list_apply_to_blob (TYPE_1__*,int *,int *) ;

__attribute__((used)) static void add_blob_and_filter(
 const char *data,
 git_filter_list *fl,
 const char *expected)
{
 git_oid id;
 git_blob *blob;
 git_buf out = { 0 };

 cl_git_mkfile("crlf/identtest", data);
 cl_git_pass(git_blob_create_from_workdir(&id, g_repo, "identtest"));
 cl_git_pass(git_blob_lookup(&blob, g_repo, &id));

 cl_git_pass(git_filter_list_apply_to_blob(&out, fl, blob));

 cl_assert_equal_s(expected, out.ptr);

 git_blob_free(blob);
 git_buf_dispose(&out);
}
