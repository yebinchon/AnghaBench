
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_9__ {int klass; } ;
typedef TYPE_1__ git_error ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_2__ git_diff_options ;
struct TYPE_11__ {int version; } ;
typedef TYPE_3__ git_diff_find_options ;
typedef int git_diff ;


 char* COPY_RENAME_COMMIT ;
 TYPE_3__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_INCLUDE_UNMODIFIED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_ERROR_INVALID ;
 char* INITIAL_COMMIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_diff_find_similar (int *,TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,TYPE_2__*) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_rename__checks_options_version(void)
{
 const char *old_sha = INITIAL_COMMIT;
 const char *new_sha = COPY_RENAME_COMMIT;
 git_tree *old_tree, *new_tree;
 git_diff *diff;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;
 const git_error *err;

 old_tree = resolve_commit_oid_to_tree(g_repo, old_sha);
 new_tree = resolve_commit_oid_to_tree(g_repo, new_sha);
 diffopts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
 cl_git_pass(git_diff_tree_to_tree(
  &diff, g_repo, old_tree, new_tree, &diffopts));

 opts.version = 0;
 cl_git_fail(git_diff_find_similar(diff, &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);

 git_error_clear();
 opts.version = 1024;
 cl_git_fail(git_diff_find_similar(diff, &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);

 git_diff_free(diff);
 git_tree_free(old_tree);
 git_tree_free(new_tree);
}
