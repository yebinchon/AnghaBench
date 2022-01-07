
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_6__ {int count; char** strings; } ;
struct TYPE_7__ {int flags; char* old_prefix; char* new_prefix; TYPE_1__ pathspec; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_DISABLE_PATHSPEC_MATCH ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ;
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ;
 int check_diff_patches (int *,char const**) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_2__*) ;
 int git_diff_merge (int *,int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_2__*) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;
 int setup_fixture_submodules () ;

void test_diff_submodules__dirty_submodule_2(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0), *diff2 = ((void*)0);
 char *smpath = "testrepo";
 static const char *expected_none[] = {
  "<END>"
 };
 static const char *expected_dirty[] = {
  "diff --git a/testrepo b/testrepo\nindex a65fedf..a65fedf 160000\n--- a/testrepo\n+++ b/testrepo\n@@ -1 +1 @@\n-Subproject commit a65fedf39aefe402d3bb6e24df4d4f5fe4547750\n+Subproject commit a65fedf39aefe402d3bb6e24df4d4f5fe4547750-dirty\n",
  "<END>"
 };

 g_repo = setup_fixture_submodules();

 opts.flags = GIT_DIFF_INCLUDE_UNTRACKED |
  GIT_DIFF_SHOW_UNTRACKED_CONTENT |
  GIT_DIFF_RECURSE_UNTRACKED_DIRS |
  GIT_DIFF_DISABLE_PATHSPEC_MATCH;
 opts.old_prefix = "a"; opts.new_prefix = "b";
 opts.pathspec.count = 1;
 opts.pathspec.strings = &smpath;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_none);
 git_diff_free(diff);

 cl_git_rewritefile("submodules/testrepo/README", "heyheyhey");
 cl_git_mkfile("submodules/testrepo/all_new.txt", "never seen before");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_dirty);

 {
  git_tree *head;

  cl_git_pass(git_repository_head_tree(&head, g_repo));
  cl_git_pass(git_diff_tree_to_index(&diff2, g_repo, head, ((void*)0), &opts));
  cl_git_pass(git_diff_merge(diff, diff2));
  git_diff_free(diff2);
  git_tree_free(head);

  check_diff_patches(diff, expected_dirty);
 }

 git_diff_free(diff);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_dirty);
 git_diff_free(diff);
}
