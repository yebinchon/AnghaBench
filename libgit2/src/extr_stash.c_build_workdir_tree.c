
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stash_update_rules {int include_changed; int member_0; } ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int git_commit ;


 int GIT_DIFF_IGNORE_SUBMODULES ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int build_tree_from_index (int **,int *,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_diff__merge (int *,int *,int ) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_1__*) ;
 int git_diff_tree_to_index (int **,int *,int *,int *,TYPE_1__*) ;
 int git_tree_free (int *) ;
 int stash_delta_merge ;
 int stash_update_index_from_diff (int *,int *,int *,struct stash_update_rules*) ;

__attribute__((used)) static int build_workdir_tree(
 git_tree **tree_out,
 git_repository *repo,
 git_index *i_index,
 git_commit *b_commit)
{
 git_tree *b_tree = ((void*)0);
 git_diff *diff = ((void*)0), *idx_to_wd = ((void*)0);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 struct stash_update_rules data = {0};
 int error;

 opts.flags = GIT_DIFF_IGNORE_SUBMODULES | GIT_DIFF_INCLUDE_UNTRACKED;

 if ((error = git_commit_tree(&b_tree, b_commit)) < 0)
  goto cleanup;

 if ((error = git_diff_tree_to_index(&diff, repo, b_tree, i_index, &opts)) < 0 ||
  (error = git_diff_index_to_workdir(&idx_to_wd, repo, i_index, &opts)) < 0 ||
  (error = git_diff__merge(diff, idx_to_wd, stash_delta_merge)) < 0)
  goto cleanup;

 data.include_changed = 1;

 if ((error = stash_update_index_from_diff(repo, i_index, diff, &data)) < 0)
  goto cleanup;

 error = build_tree_from_index(tree_out, repo, i_index);

cleanup:
 git_diff_free(idx_to_wd);
 git_diff_free(diff);
 git_tree_free(b_tree);

 return error;
}
