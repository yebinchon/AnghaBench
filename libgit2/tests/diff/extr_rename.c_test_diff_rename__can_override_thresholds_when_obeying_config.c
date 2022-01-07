
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
struct TYPE_11__ {int copy_threshold; int flags; } ;
typedef TYPE_2__ git_diff_find_options ;
typedef int git_diff ;
typedef int git_config ;
typedef int exp ;
struct TYPE_12__ {int * file_status; int files; } ;
typedef TYPE_3__ diff_expects ;


 char* COPY_RENAME_COMMIT ;
 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_COPIED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_UNMODIFIED ;
 int GIT_DIFF_FIND_BY_CONFIG ;
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_INCLUDE_UNMODIFIED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 char* REWRITE_COPY_COMMIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_diff_find_similar (int *,TYPE_2__*) ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,TYPE_1__*) ;
 int git_repository_config (int **,int ) ;
 int git_tree_free (int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_rename__can_override_thresholds_when_obeying_config(void)
{
 const char *sha1 = COPY_RENAME_COMMIT;
 const char *sha2 = REWRITE_COPY_COMMIT;

 git_tree *tree1, *tree2;
 git_config *cfg;
 git_diff *diff;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;
 diff_expects exp;

 tree1 = resolve_commit_oid_to_tree(g_repo, sha1);
 tree2 = resolve_commit_oid_to_tree(g_repo, sha2);

 diffopts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
 opts.flags = GIT_DIFF_FIND_BY_CONFIG;

 cl_git_pass(git_repository_config(&cfg, g_repo));
 cl_git_pass(git_config_set_string(cfg, "diff.renames", "copies"));
 git_config_free(cfg);


 opts.copy_threshold = 96;
 cl_git_pass(git_diff_tree_to_tree(
    &diff, g_repo, tree1, tree2, &diffopts));
 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_find_similar(diff, &opts));
 cl_git_pass(git_diff_foreach(diff,
    diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(4, exp.files);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_UNMODIFIED]);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_ADDED]);
 git_diff_free(diff);


 opts.copy_threshold = 20;
 cl_git_pass(git_diff_tree_to_tree(
    &diff, g_repo, tree1, tree2, &diffopts));
 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_find_similar(diff, &opts));
 cl_git_pass(git_diff_foreach(diff,
    diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(4, exp.files);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_UNMODIFIED]);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_COPIED]);
 git_diff_free(diff);


 git_tree_free(tree1);
 git_tree_free(tree2);
}
