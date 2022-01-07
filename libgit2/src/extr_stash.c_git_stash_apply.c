
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_9__ {unsigned int checkout_strategy; int * baseline_index; } ;
struct TYPE_8__ {int flags; TYPE_5__ checkout_options; } ;
typedef TYPE_1__ git_stash_apply_options ;
typedef int git_repository ;
typedef int git_index ;
typedef int git_commit ;


 unsigned int GIT_CHECKOUT_DONT_UPDATE_INDEX ;
 int GIT_ECONFLICT ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__ const*,int ,char*) ;
 int GIT_STASH_APPLY_OPTIONS_VERSION ;
 int GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX ;
 int GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED ;
 int GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED ;
 int GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED ;
 int GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED ;
 int GIT_STASH_APPLY_PROGRESS_DONE ;
 int GIT_STASH_APPLY_PROGRESS_LOADING_STASH ;
 int GIT_STASH_APPLY_REINSTATE_INDEX ;
 int NOTIFY_PROGRESS (TYPE_1__,int ) ;
 int ensure_clean_index (int *,int *) ;
 int git_checkout_index (int *,int *,TYPE_5__*) ;
 int git_commit_free (int *) ;
 int git_index_free (int *) ;
 scalar_t__ git_index_has_conflicts (int *) ;
 int git_index_read_index (int *,int *) ;
 int git_index_write (int *) ;
 scalar_t__ git_oid_cmp (int ,int ) ;
 int git_repository_index (int **,int *) ;
 int git_tree_free (int *) ;
 int git_tree_id (int *) ;
 int merge_index_and_tree (int **,int *,int *,int *,int *) ;
 int merge_indexes (int **,int *,int *,int *,int *) ;
 int normalize_apply_options (TYPE_1__*,TYPE_1__ const*) ;
 int retrieve_stash_commit (int **,int *,size_t) ;
 int retrieve_stash_trees (int **,int **,int **,int **,int **,int *) ;
 int stage_new_files (int **,int *,int *) ;

int git_stash_apply(
 git_repository *repo,
 size_t index,
 const git_stash_apply_options *given_opts)
{
 git_stash_apply_options opts;
 unsigned int checkout_strategy;
 git_commit *stash_commit = ((void*)0);
 git_tree *stash_tree = ((void*)0);
 git_tree *stash_parent_tree = ((void*)0);
 git_tree *index_tree = ((void*)0);
 git_tree *index_parent_tree = ((void*)0);
 git_tree *untracked_tree = ((void*)0);
 git_index *stash_adds = ((void*)0);
 git_index *repo_index = ((void*)0);
 git_index *unstashed_index = ((void*)0);
 git_index *modified_index = ((void*)0);
 git_index *untracked_index = ((void*)0);
 int error;

 GIT_ERROR_CHECK_VERSION(given_opts, GIT_STASH_APPLY_OPTIONS_VERSION, "git_stash_apply_options");

 normalize_apply_options(&opts, given_opts);
 checkout_strategy = opts.checkout_options.checkout_strategy;

 NOTIFY_PROGRESS(opts, GIT_STASH_APPLY_PROGRESS_LOADING_STASH);


 if ((error = retrieve_stash_commit(&stash_commit, repo, index)) < 0)
  goto cleanup;


 if ((error = retrieve_stash_trees(
   &stash_tree, &stash_parent_tree, &index_tree,
   &index_parent_tree, &untracked_tree, stash_commit)) < 0)
  goto cleanup;


 if ((error = git_repository_index(&repo_index, repo)) < 0)
  goto cleanup;

 NOTIFY_PROGRESS(opts, GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX);

 if ((error = ensure_clean_index(repo, repo_index)) < 0)
  goto cleanup;


 if ((opts.flags & GIT_STASH_APPLY_REINSTATE_INDEX) &&
  git_oid_cmp(git_tree_id(stash_parent_tree), git_tree_id(index_tree))) {

  if ((error = merge_index_and_tree(
    &unstashed_index, repo, index_parent_tree, repo_index, index_tree)) < 0)
   goto cleanup;

  if (git_index_has_conflicts(unstashed_index)) {
   error = GIT_ECONFLICT;
   goto cleanup;
  }




 } else if ((opts.flags & GIT_STASH_APPLY_REINSTATE_INDEX) == 0) {
  if ((error = stage_new_files(
    &stash_adds, stash_parent_tree, stash_tree)) < 0 ||
   (error = merge_indexes(
    &unstashed_index, repo, stash_parent_tree, repo_index, stash_adds)) < 0)
   goto cleanup;
 }

 NOTIFY_PROGRESS(opts, GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED);


 if ((error = merge_index_and_tree(
   &modified_index, repo, stash_parent_tree, repo_index, stash_tree)) < 0)
  goto cleanup;


 if (untracked_tree) {
  NOTIFY_PROGRESS(opts, GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED);

  if ((error = merge_index_and_tree(&untracked_index, repo, ((void*)0), repo_index, untracked_tree)) < 0)
   goto cleanup;
 }

 if (untracked_index) {
  opts.checkout_options.checkout_strategy |= GIT_CHECKOUT_DONT_UPDATE_INDEX;

  NOTIFY_PROGRESS(opts, GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED);

  if ((error = git_checkout_index(repo, untracked_index, &opts.checkout_options)) < 0)
   goto cleanup;

  opts.checkout_options.checkout_strategy = checkout_strategy;
 }







 if (!git_index_has_conflicts(modified_index))
  opts.checkout_options.checkout_strategy |= GIT_CHECKOUT_DONT_UPDATE_INDEX;





 opts.checkout_options.baseline_index = repo_index;

 NOTIFY_PROGRESS(opts, GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED);

 if ((error = git_checkout_index(repo, modified_index, &opts.checkout_options)) < 0)
  goto cleanup;

 if (unstashed_index && !git_index_has_conflicts(modified_index)) {
  if ((error = git_index_read_index(repo_index, unstashed_index)) < 0)
   goto cleanup;
 }

 NOTIFY_PROGRESS(opts, GIT_STASH_APPLY_PROGRESS_DONE);

 error = git_index_write(repo_index);

cleanup:
 git_index_free(untracked_index);
 git_index_free(modified_index);
 git_index_free(unstashed_index);
 git_index_free(stash_adds);
 git_index_free(repo_index);
 git_tree_free(untracked_tree);
 git_tree_free(index_parent_tree);
 git_tree_free(index_tree);
 git_tree_free(stash_parent_tree);
 git_tree_free(stash_tree);
 git_commit_free(stash_commit);
 return error;
}
