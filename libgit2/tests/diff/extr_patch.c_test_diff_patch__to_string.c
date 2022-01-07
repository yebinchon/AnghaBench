
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_patch ;
typedef int git_diff ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_diff_free (int *) ;
 scalar_t__ git_diff_num_deltas (int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 int git_patch_size (int *,int,int,int) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;
 int strlen (char const*) ;

void test_diff_patch__to_string(void)
{
 const char *one_sha = "26a125e";
 const char *another_sha = "735b6a2";
 git_tree *one, *another;
 git_diff *diff;
 git_patch *patch;
 git_buf buf = GIT_BUF_INIT;
 const char *expected = "diff --git a/subdir.txt b/subdir.txt\ndeleted file mode 100644\nindex e8ee89e..0000000\n--- a/subdir.txt\n+++ /dev/null\n@@ -1,2 +0,0 @@\n-Is it a bird?\n-Is it a plane?\n";

 g_repo = cl_git_sandbox_init("status");

 one = resolve_commit_oid_to_tree(g_repo, one_sha);
 another = resolve_commit_oid_to_tree(g_repo, another_sha);

 cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, one, another, ((void*)0)));

 cl_assert_equal_i(1, (int)git_diff_num_deltas(diff));

 cl_git_pass(git_patch_from_diff(&patch, diff, 0));

 cl_git_pass(git_patch_to_buf(&buf, patch));

 cl_assert_equal_s(expected, buf.ptr);

 cl_assert_equal_sz(31, git_patch_size(patch, 0, 0, 0));
 cl_assert_equal_sz(31, git_patch_size(patch, 1, 0, 0));
 cl_assert_equal_sz(31 + 16, git_patch_size(patch, 1, 1, 0));
 cl_assert_equal_sz(strlen(expected), git_patch_size(patch, 1, 1, 1));

 git_buf_dispose(&buf);
 git_patch_free(patch);
 git_diff_free(diff);
 git_tree_free(another);
 git_tree_free(one);
}
