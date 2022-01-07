
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_patch ;
typedef int git_diff ;
typedef int git_config ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_11__ {int * diff_drivers; } ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 TYPE_2__* cl_git_sandbox_init (char*) ;
 TYPE_2__* g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_diff_driver_registry_free (int *) ;
 int git_diff_free (int *) ;
 scalar_t__ git_diff_num_deltas (int *) ;
 int git_diff_tree_to_workdir (int **,TYPE_2__*,int *,int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;
 int git_repository_config (int **,TYPE_2__*) ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (TYPE_2__*,char const*) ;

void test_diff_drivers__patterns(void)
{
 git_config *cfg;
 const char *one_sha = "19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13";
 git_tree *one;
 git_diff *diff;
 git_patch *patch;
 git_buf actual = GIT_BUF_INIT;
 const char *expected0 = "diff --git a/untimely.txt b/untimely.txt\nindex 9a69d96..57fd0cf 100644\n--- a/untimely.txt\n+++ b/untimely.txt\n@@ -22,3 +22,5 @@ Comes through the blood of the vanguards who\n   dreamed--too soon--it had sounded.\r\n \r\n                 -- Rudyard Kipling\r\n+\r\n+Some new stuff\r\n";
 const char *expected1 = "diff --git a/untimely.txt b/untimely.txt\nindex 9a69d96..57fd0cf 100644\nBinary files a/untimely.txt and b/untimely.txt differ\n";
 const char *expected2 = "diff --git a/untimely.txt b/untimely.txt\nindex 9a69d96..57fd0cf 100644\n--- a/untimely.txt\n+++ b/untimely.txt\n@@ -22,3 +22,5 @@ Heaven delivers on earth the Hour that cannot be\n   dreamed--too soon--it had sounded.\r\n \r\n                 -- Rudyard Kipling\r\n+\r\n+Some new stuff\r\n";

 g_repo = cl_git_sandbox_init("renames");

 one = resolve_commit_oid_to_tree(g_repo, one_sha);



 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, one, ((void*)0)));
 cl_assert_equal_i(0, (int)git_diff_num_deltas(diff));
 git_diff_free(diff);



 cl_git_append2file("renames/untimely.txt", "\r\nSome new stuff\r\n");

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, one, ((void*)0)));
 cl_assert_equal_i(1, (int)git_diff_num_deltas(diff));

 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&actual, patch));
 cl_assert_equal_s(expected0, actual.ptr);

 git_buf_dispose(&actual);
 git_patch_free(patch);
 git_diff_free(diff);



 cl_git_rewritefile("renames/.gitattributes", "untimely.txt -diff\n");

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, one, ((void*)0)));
 cl_assert_equal_i(1, (int)git_diff_num_deltas(diff));

 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&actual, patch));
 cl_assert_equal_s(expected1, actual.ptr);

 git_buf_dispose(&actual);
 git_patch_free(patch);
 git_diff_free(diff);



 cl_git_rewritefile("renames/.gitattributes", "untimely.txt diff=kipling0\n");

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, one, ((void*)0)));
 cl_assert_equal_i(1, (int)git_diff_num_deltas(diff));

 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&actual, patch));
 cl_assert_equal_s(expected0, actual.ptr);

 git_buf_dispose(&actual);
 git_patch_free(patch);
 git_diff_free(diff);



 cl_git_pass(git_repository_config(&cfg, g_repo));
 cl_git_pass(git_config_set_bool(cfg, "diff.kipling0.binary", 1));
 git_config_free(cfg);

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, one, ((void*)0)));
 cl_assert_equal_i(1, (int)git_diff_num_deltas(diff));

 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&actual, patch));
 cl_assert_equal_s(expected1, actual.ptr);

 git_buf_dispose(&actual);
 git_patch_free(patch);
 git_diff_free(diff);



 git_diff_driver_registry_free(g_repo->diff_drivers);
 g_repo->diff_drivers = ((void*)0);

 cl_git_pass(git_repository_config(&cfg, g_repo));
 cl_git_pass(git_config_set_bool(cfg, "diff.kipling0.binary", 0));
 cl_git_pass(git_config_set_string(cfg, "diff.kipling0.xfuncname", "^H.*$"));
 git_config_free(cfg);

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, one, ((void*)0)));
 cl_assert_equal_i(1, (int)git_diff_num_deltas(diff));

 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&actual, patch));
 cl_assert_equal_s(expected2, actual.ptr);

 git_buf_dispose(&actual);
 git_patch_free(patch);
 git_diff_free(diff);

 git_tree_free(one);
}
