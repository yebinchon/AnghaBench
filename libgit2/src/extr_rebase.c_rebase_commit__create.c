
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_signature ;
struct TYPE_7__ {int id; } ;
typedef TYPE_2__ git_rebase_operation ;
struct TYPE_6__ {int payload; int (* signing_cb ) (int *,int *,char*,int ) ;} ;
struct TYPE_8__ {int repo; TYPE_1__ options; int current; int operations; } ;
typedef TYPE_3__ git_rebase ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EAPPLIED ;
 int GIT_ERROR_REBASE ;
 int GIT_EUNMERGED ;
 int GIT_OK ;
 int GIT_PASSTHROUGH ;
 int assert (int ) ;
 TYPE_2__* git_array_get (int ,int ) ;
 int git_buf_contains_nul (int *) ;
 char* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_is_allocated (int *) ;
 int * git_commit_author (int *) ;
 int git_commit_create_buffer (int *,int ,int const*,int const*,char const*,char const*,int *,int,int const**) ;
 int git_commit_create_with_signature (int *,int ,char*,char const*,char const*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 char* git_commit_message (int *) ;
 char* git_commit_message_encoding (int *) ;
 int git_commit_tree (int **,int *) ;
 int git_error_clear () ;
 int git_error_set (int ,char*) ;
 int git_error_set_after_callback_function (int ,char*) ;
 scalar_t__ git_index_has_conflicts (int *) ;
 int git_index_write_tree_to (int *,int *,int ) ;
 scalar_t__ git_oid_equal (int *,int ) ;
 int git_tree_free (int *) ;
 int git_tree_id (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int stub1 (int *,int *,char*,int ) ;

__attribute__((used)) static int rebase_commit__create(
 git_commit **out,
 git_rebase *rebase,
 git_index *index,
 git_commit *parent_commit,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message)
{
 git_rebase_operation *operation;
 git_commit *current_commit = ((void*)0), *commit = ((void*)0);
 git_tree *parent_tree = ((void*)0), *tree = ((void*)0);
 git_oid tree_id, commit_id;
 git_buf commit_content = GIT_BUF_INIT, commit_signature = GIT_BUF_INIT,
  signature_field = GIT_BUF_INIT;
 const char *signature_field_string = ((void*)0),
  *commit_signature_string = ((void*)0);
 int error;

 operation = git_array_get(rebase->operations, rebase->current);

 if (git_index_has_conflicts(index)) {
  git_error_set(GIT_ERROR_REBASE, "conflicts have not been resolved");
  error = GIT_EUNMERGED;
  goto done;
 }

 if ((error = git_commit_lookup(&current_commit, rebase->repo, &operation->id)) < 0 ||
  (error = git_commit_tree(&parent_tree, parent_commit)) < 0 ||
  (error = git_index_write_tree_to(&tree_id, index, rebase->repo)) < 0 ||
  (error = git_tree_lookup(&tree, rebase->repo, &tree_id)) < 0)
  goto done;

 if (git_oid_equal(&tree_id, git_tree_id(parent_tree))) {
  git_error_set(GIT_ERROR_REBASE, "this patch has already been applied");
  error = GIT_EAPPLIED;
  goto done;
 }

 if (!author)
  author = git_commit_author(current_commit);

 if (!message) {
  message_encoding = git_commit_message_encoding(current_commit);
  message = git_commit_message(current_commit);
 }

 if ((error = git_commit_create_buffer(&commit_content, rebase->repo, author, committer,
   message_encoding, message, tree, 1, (const git_commit **)&parent_commit)) < 0)
  goto done;

 if (rebase->options.signing_cb) {
  git_error_clear();
  error = git_error_set_after_callback_function(rebase->options.signing_cb(
   &commit_signature, &signature_field, git_buf_cstr(&commit_content),
   rebase->options.payload), "commit signing_cb failed");
  if (error == GIT_PASSTHROUGH) {
   git_buf_dispose(&commit_signature);
   git_buf_dispose(&signature_field);
   git_error_clear();
   error = GIT_OK;
  } else if (error < 0)
   goto done;
 }

 if (git_buf_is_allocated(&commit_signature)) {
  assert(git_buf_contains_nul(&commit_signature));
  commit_signature_string = git_buf_cstr(&commit_signature);
 }

 if (git_buf_is_allocated(&signature_field)) {
  assert(git_buf_contains_nul(&signature_field));
  signature_field_string = git_buf_cstr(&signature_field);
 }

 if ((error = git_commit_create_with_signature(&commit_id, rebase->repo,
   git_buf_cstr(&commit_content), commit_signature_string,
   signature_field_string)))
  goto done;

 if ((error = git_commit_lookup(&commit, rebase->repo, &commit_id)) < 0)
  goto done;

 *out = commit;

done:
 if (error < 0)
  git_commit_free(commit);

 git_buf_dispose(&commit_signature);
 git_buf_dispose(&signature_field);
 git_buf_dispose(&commit_content);
 git_commit_free(current_commit);
 git_tree_free(parent_tree);
 git_tree_free(tree);

 return error;
}
