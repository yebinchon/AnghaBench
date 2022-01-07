
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_5__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;
struct TYPE_6__ {int id; } ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int ,int *,int ,char*) ;
 int g_repo ;
 int git_blob_filter (TYPE_1__*,int *,char*,int *) ;
 int git_blob_free (int *) ;
 int git_blob_id (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 int git_blob_rawcontent (int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 TYPE_2__* git_index_get_bypath (int *,char*,int ) ;
 int git_oid_strcmp (int ,char*) ;
 int git_repository_index (int **,int ) ;

void test_filter_custom__order_dependency(void)
{
 git_index *index;
 git_blob *blob;
 git_buf buf = { 0 };
 cl_git_mkfile(
  "empty_standard_repo/.gitattributes",
  "hero.*.rev-ident text ident prereverse eol=lf\n");

 cl_git_mkfile(
  "empty_standard_repo/hero.1.rev-ident",
  "This is a test\n$Id$\nHave fun!\n");

 cl_git_mkfile(
  "empty_standard_repo/hero.2.rev-ident",
  "Another test\n$dI$\nCrazy!\n");

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_add_bypath(index, "hero.1.rev-ident"));
 cl_git_pass(git_index_add_bypath(index, "hero.2.rev-ident"));
 cl_repo_commit_from_index(((void*)0), g_repo, ((void*)0), 0, "Filter chains\n");
 git_index_free(index);

 cl_git_pass(git_blob_lookup(&blob, g_repo,
  & git_index_get_bypath(index, "hero.1.rev-ident", 0)->id));
 cl_assert_equal_s(
  "\n!nuf evaH\n$dI$\ntset a si sihT", git_blob_rawcontent(blob));
 cl_git_pass(git_blob_filter(&buf, blob, "hero.1.rev-ident", ((void*)0)));


 cl_assert_equal_s(
  "This is a test\n$Id$\nHave fun!\n", buf.ptr);
 git_blob_free(blob);

 cl_git_pass(git_blob_lookup(&blob, g_repo,
  & git_index_get_bypath(index, "hero.2.rev-ident", 0)->id));
 cl_assert_equal_s(
  "\n!yzarC\n$Id$\ntset rehtonA", git_blob_rawcontent(blob));
 cl_git_pass(git_blob_filter(&buf, blob, "hero.2.rev-ident", ((void*)0)));


 cl_assert_equal_s(
  "Another test\n$ 59001fe193103b1016b27027c0c827d036fd0ac8 :dI$\nCrazy!\n", buf.ptr);
 cl_assert_equal_i(0, git_oid_strcmp(
  git_blob_id(blob), "8ca0df630d728c0c72072b6101b301391ef10095"));
 git_blob_free(blob);

 git_buf_dispose(&buf);
}
