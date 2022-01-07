
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_NOTES_DEFAULT_MSG_RM ;
 int git_commit_create (int *,int *,char const*,int const*,int const*,int *,int ,int *,int,int const**) ;
 int git_oid_cpy (int *,int *) ;
 int git_tree_free (int *) ;
 int manipulate_note_in_tree_r (int **,int *,int *,int *,char const*,int ,int ,int ) ;
 int remove_note_in_tree_eexists_cb ;
 int remove_note_in_tree_enotfound_cb ;

__attribute__((used)) static int note_remove(
  git_oid *notes_commit_out,
  git_repository *repo,
  const git_signature *author, const git_signature *committer,
  const char *notes_ref, git_tree *tree,
  const char *target, git_commit **parents)
{
 int error;
 git_tree *tree_after_removal = ((void*)0);
 git_oid oid;

 if ((error = manipulate_note_in_tree_r(
  &tree_after_removal, repo, tree, ((void*)0), target, 0,
  remove_note_in_tree_eexists_cb, remove_note_in_tree_enotfound_cb)) < 0)
  goto cleanup;

 error = git_commit_create(&oid, repo, notes_ref, author, committer,
   ((void*)0), GIT_NOTES_DEFAULT_MSG_RM,
   tree_after_removal,
   *parents == ((void*)0) ? 0 : 1,
   (const git_commit **) parents);

 if (error < 0)
  goto cleanup;

 if (notes_commit_out)
  git_oid_cpy(notes_commit_out, &oid);

cleanup:
 git_tree_free(tree_after_removal);
 return error;
}
