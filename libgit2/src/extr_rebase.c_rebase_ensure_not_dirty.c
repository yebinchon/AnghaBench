
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_4__ {int ignore_submodules; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;


 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_ERROR_REBASE ;
 int GIT_SUBMODULE_IGNORE_UNTRACKED ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_1__*) ;
 scalar_t__ git_diff_num_deltas (int *) ;
 int git_diff_tree_to_index (int **,int *,int *,int *,int *) ;
 int git_error_set (int ,char*) ;
 int git_index_free (int *) ;
 int git_repository_head_tree (int **,int *) ;
 int git_repository_index (int **,int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static int rebase_ensure_not_dirty(
 git_repository *repo,
 bool check_index,
 bool check_workdir,
 int fail_with)
{
 git_tree *head = ((void*)0);
 git_index *index = ((void*)0);
 git_diff *diff = ((void*)0);
 int error = 0;

 if (check_index) {
  if ((error = git_repository_head_tree(&head, repo)) < 0 ||
   (error = git_repository_index(&index, repo)) < 0 ||
   (error = git_diff_tree_to_index(&diff, repo, head, index, ((void*)0))) < 0)
   goto done;

  if (git_diff_num_deltas(diff) > 0) {
   git_error_set(GIT_ERROR_REBASE, "uncommitted changes exist in index");
   error = fail_with;
   goto done;
  }

  git_diff_free(diff);
  diff = ((void*)0);
 }

 if (check_workdir) {
  git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
  diff_opts.ignore_submodules = GIT_SUBMODULE_IGNORE_UNTRACKED;
  if ((error = git_diff_index_to_workdir(&diff, repo, index, &diff_opts)) < 0)
   goto done;

  if (git_diff_num_deltas(diff) > 0) {
   git_error_set(GIT_ERROR_REBASE, "unstaged changes exist in workdir");
   error = fail_with;
   goto done;
  }
 }

done:
 git_diff_free(diff);
 git_index_free(index);
 git_tree_free(head);

 return error;
}
