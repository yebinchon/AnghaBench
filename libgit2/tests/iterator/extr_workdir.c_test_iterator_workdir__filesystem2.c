
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator ;


 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,char const**,int,char const**) ;
 int g_repo ;
 int git_iterator_for_filesystem (int **,char*,int *) ;
 int git_iterator_free (int *) ;

void test_iterator_workdir__filesystem2(void)
{
 git_iterator *i;
 static const char *expect_base[] = {
  "heads/br2",
  "heads/dir",
  "heads/executable",
  "heads/ident",
  "heads/long-file-name",
  "heads/master",
  "heads/merge-conflict",
  "heads/packed-test",
  "heads/subtrees",
  "heads/test",
  "heads/testrepo-worktree",
  "tags/e90810b",
  "tags/foo/bar",
  "tags/foo/foo/bar",
  "tags/point_to_blob",
  "tags/test",
  ((void*)0),
 };

 g_repo = cl_git_sandbox_init("testrepo");

 cl_git_pass(git_iterator_for_filesystem(
  &i, "testrepo/.git/refs", ((void*)0)));
 expect_iterator_items(i, 16, expect_base, 16, expect_base);
 git_iterator_free(i);
}
