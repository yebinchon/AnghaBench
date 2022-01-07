
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_index ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_PATIENCE ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int cl_repo_commit_from_index (int *,int ,int *,int,char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_buf_clear (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_diff_num_deltas (int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 int git_patch_to_buf (TYPE_2__*,int *) ;
 int git_repository_index (int **,int ) ;

void test_diff_workdir__patience_diff(void)
{
 git_index *index;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_patch *patch = ((void*)0);
 git_buf buf = GIT_BUF_INIT;
 const char *expected_normal = "diff --git a/test.txt b/test.txt\nindex 34a5acc..d52725f 100644\n--- a/test.txt\n+++ b/test.txt\n@@ -1,10 +1,7 @@\n When I wrote this\n I did not know\n-how to create\n-a patience diff\n I did not know\n how to create\n+a patience diff\n another problem\n-I did not know\n-how to create\n a minimal diff\n";
 const char *expected_patience = "diff --git a/test.txt b/test.txt\nindex 34a5acc..d52725f 100644\n--- a/test.txt\n+++ b/test.txt\n@@ -1,10 +1,7 @@\n When I wrote this\n I did not know\n+I did not know\n how to create\n a patience diff\n-I did not know\n-how to create\n another problem\n-I did not know\n-how to create\n a minimal diff\n";

 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_repo_set_bool(g_repo, "core.autocrlf", 1);
 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_mkfile(
  "empty_standard_repo/test.txt",
  "When I wrote this\nI did not know\nhow to create\na patience diff\nI did not know\nhow to create\nanother problem\nI did not know\nhow to create\na minimal diff\n");
 cl_git_pass(git_index_add_bypath(index, "test.txt"));
 cl_repo_commit_from_index(((void*)0), g_repo, ((void*)0), 1372350000, "Base");
 git_index_free(index);

 cl_git_rewritefile(
  "empty_standard_repo/test.txt",
  "When I wrote this\nI did not know\nI did not know\nhow to create\na patience diff\nanother problem\na minimal diff\n");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 cl_assert_equal_i(1, git_diff_num_deltas(diff));
 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&buf, patch));

 cl_assert_equal_s(expected_normal, buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(patch);
 git_diff_free(diff);

 opts.flags |= GIT_DIFF_PATIENCE;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 cl_assert_equal_i(1, git_diff_num_deltas(diff));
 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&buf, patch));

 cl_assert_equal_s(expected_patience, buf.ptr);
 git_buf_clear(&buf);

 git_buf_dispose(&buf);
 git_patch_free(patch);
 git_diff_free(diff);
}
