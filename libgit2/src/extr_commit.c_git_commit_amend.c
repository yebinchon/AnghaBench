
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_ERROR_CHECK_ERROR (int ) ;
 int GIT_ERROR_REFERENCE ;
 int assert (int) ;
 int commit_parent_for_amend ;
 int git_commit__create_internal (int *,int *,int *,int const*,int const*,char const*,char const*,int *,int ,void*,int) ;
 int * git_commit_author (int const*) ;
 int * git_commit_committer (int const*) ;
 int git_commit_id (int const*) ;
 char* git_commit_message (int const*) ;
 char* git_commit_message_encoding (int const*) ;
 int * git_commit_owner (int const*) ;
 int git_commit_tree (int const**,int const*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_oid_cmp (int ,int ) ;
 int git_oid_cpy (int *,int ) ;
 int git_reference__update_for_commit (int *,int *,int *,int *,char*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup_resolved (int **,int *,char const*,int) ;
 int git_reference_target (int *) ;
 int git_tree_free (int const*) ;
 int git_tree_id (int const*) ;
 int * git_tree_owner (int const*) ;

int git_commit_amend(
 git_oid *id,
 const git_commit *commit_to_amend,
 const char *update_ref,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message,
 const git_tree *tree)
{
 git_repository *repo;
 git_oid tree_id;
 git_reference *ref;
 int error;

 assert(id && commit_to_amend);

 repo = git_commit_owner(commit_to_amend);

 if (!author)
  author = git_commit_author(commit_to_amend);
 if (!committer)
  committer = git_commit_committer(commit_to_amend);
 if (!message_encoding)
  message_encoding = git_commit_message_encoding(commit_to_amend);
 if (!message)
  message = git_commit_message(commit_to_amend);

 if (!tree) {
  git_tree *old_tree;
  GIT_ERROR_CHECK_ERROR( git_commit_tree(&old_tree, commit_to_amend) );
  git_oid_cpy(&tree_id, git_tree_id(old_tree));
  git_tree_free(old_tree);
 } else {
  assert(git_tree_owner(tree) == repo);
  git_oid_cpy(&tree_id, git_tree_id(tree));
 }

 if (update_ref) {
  if ((error = git_reference_lookup_resolved(&ref, repo, update_ref, 5)) < 0)
   return error;

  if (git_oid_cmp(git_commit_id(commit_to_amend), git_reference_target(ref))) {
   git_reference_free(ref);
   git_error_set(GIT_ERROR_REFERENCE, "commit to amend is not the tip of the given branch");
   return -1;
  }
 }

 error = git_commit__create_internal(
  id, repo, ((void*)0), author, committer, message_encoding, message,
  &tree_id, commit_parent_for_amend, (void *)commit_to_amend, 0);

 if (!error && update_ref) {
  error = git_reference__update_for_commit(
   repo, ref, ((void*)0), id, "commit");
  git_reference_free(ref);
 }

 return error;
}
