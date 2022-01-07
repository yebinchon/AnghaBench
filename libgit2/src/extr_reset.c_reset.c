
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_tree ;
typedef scalar_t__ git_reset_t ;
typedef int git_repository ;
typedef int git_object ;
typedef int git_index ;
typedef int git_commit ;
struct TYPE_5__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int git_buf ;


 int ERROR_MSG ;
 int GIT_BUF_INIT ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_ERROR_INDEX ;
 int GIT_ERROR_OBJECT ;
 int GIT_EUNMERGED ;
 int GIT_HEAD_FILE ;
 int GIT_OBJECT_COMMIT ;
 scalar_t__ GIT_REPOSITORY_STATE_MERGE ;
 scalar_t__ GIT_RESET_HARD ;
 scalar_t__ GIT_RESET_MIXED ;
 scalar_t__ GIT_RESET_SOFT ;
 int assert (int) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char const*) ;
 int git_checkout_tree (int *,int *,TYPE_1__*) ;
 int git_commit_tree (int **,int *) ;
 int git_error_set (int ,char*,int ) ;
 int git_index_free (int *) ;
 scalar_t__ git_index_has_conflicts (int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write (int *) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int * git_object_owner (int const*) ;
 int git_object_peel (int **,int const*,int ) ;
 int git_reference__update_terminal (int *,int ,int ,int *,int ) ;
 int git_repository__ensure_not_bare (int *,char*) ;
 int git_repository_index (int **,int *) ;
 scalar_t__ git_repository_state (int *) ;
 int git_repository_state_cleanup (int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static int reset(
 git_repository *repo,
 const git_object *target,
 const char *to,
 git_reset_t reset_type,
 const git_checkout_options *checkout_opts)
{
 git_object *commit = ((void*)0);
 git_index *index = ((void*)0);
 git_tree *tree = ((void*)0);
 int error = 0;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_buf log_message = GIT_BUF_INIT;

 assert(repo && target);

 if (checkout_opts)
  opts = *checkout_opts;

 if (git_object_owner(target) != repo) {
  git_error_set(GIT_ERROR_OBJECT,
   "%s - The given target does not belong to this repository.", ERROR_MSG);
  return -1;
 }

 if (reset_type != GIT_RESET_SOFT &&
  (error = git_repository__ensure_not_bare(repo,
   reset_type == GIT_RESET_MIXED ? "reset mixed" : "reset hard")) < 0)
  return error;

 if ((error = git_object_peel(&commit, target, GIT_OBJECT_COMMIT)) < 0 ||
  (error = git_repository_index(&index, repo)) < 0 ||
  (error = git_commit_tree(&tree, (git_commit *)commit)) < 0)
  goto cleanup;

 if (reset_type == GIT_RESET_SOFT &&
  (git_repository_state(repo) == GIT_REPOSITORY_STATE_MERGE ||
   git_index_has_conflicts(index)))
 {
  git_error_set(GIT_ERROR_OBJECT, "%s (soft) in the middle of a merge", ERROR_MSG);
  error = GIT_EUNMERGED;
  goto cleanup;
 }

 if ((error = git_buf_printf(&log_message, "reset: moving to %s", to)) < 0)
  return error;

 if (reset_type == GIT_RESET_HARD) {

  opts.checkout_strategy = GIT_CHECKOUT_FORCE;

  if ((error = git_checkout_tree(repo, (git_object *)tree, &opts)) < 0)
   goto cleanup;
 }


 if ((error = git_reference__update_terminal(repo, GIT_HEAD_FILE,
  git_object_id(commit), ((void*)0), git_buf_cstr(&log_message))) < 0)
  goto cleanup;

 if (reset_type > GIT_RESET_SOFT) {


  if ((error = git_index_read_tree(index, tree)) < 0 ||
   (error = git_index_write(index)) < 0)
   goto cleanup;

  if ((error = git_repository_state_cleanup(repo)) < 0) {
   git_error_set(GIT_ERROR_INDEX, "%s - failed to clean up merge data", ERROR_MSG);
   goto cleanup;
  }
 }

cleanup:
 git_object_free(commit);
 git_index_free(index);
 git_tree_free(tree);
 git_buf_dispose(&log_message);

 return error;
}
