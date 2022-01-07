
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct stash_update_rules {int include_untracked; int include_ignored; int member_0; } ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int git_commit ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_RECURSE_IGNORED_DIRS ;
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ;
 int GIT_STASH_INCLUDE_IGNORED ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int build_tree_from_index (int **,int *,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_workdir (int **,int *,int *,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_tree_free (int *) ;
 int stash_update_index_from_diff (int *,int *,int *,struct stash_update_rules*) ;

__attribute__((used)) static int build_untracked_tree(
 git_tree **tree_out,
 git_repository *repo,
 git_commit *i_commit,
 uint32_t flags)
{
 git_index *i_index = ((void*)0);
 git_tree *i_tree = ((void*)0);
 git_diff *diff = ((void*)0);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 struct stash_update_rules data = {0};
 int error;

 if ((error = git_index_new(&i_index)) < 0)
  goto cleanup;

 if (flags & GIT_STASH_INCLUDE_UNTRACKED) {
  opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED |
   GIT_DIFF_RECURSE_UNTRACKED_DIRS;
  data.include_untracked = 1;
 }

 if (flags & GIT_STASH_INCLUDE_IGNORED) {
  opts.flags |= GIT_DIFF_INCLUDE_IGNORED |
   GIT_DIFF_RECURSE_IGNORED_DIRS;
  data.include_ignored = 1;
 }

 if ((error = git_commit_tree(&i_tree, i_commit)) < 0)
  goto cleanup;

 if ((error = git_diff_tree_to_workdir(&diff, repo, i_tree, &opts)) < 0)
  goto cleanup;

 if ((error = stash_update_index_from_diff(repo, i_index, diff, &data)) < 0)
  goto cleanup;

 error = build_tree_from_index(tree_out, repo, i_index);

cleanup:
 git_diff_free(diff);
 git_tree_free(i_tree);
 git_index_free(i_index);
 return error;
}
