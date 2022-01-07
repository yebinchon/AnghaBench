
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_NOTES_DEFAULT_MSG_ADD ;
 int git_blob_create_from_buffer (int *,int *,char const*,int ) ;
 int git_commit_create (int *,int *,char const*,int const*,int const*,int *,int ,int *,int,int const**) ;
 int git_oid_cpy (int *,int *) ;
 int git_tree_free (int *) ;
 int insert_note_in_tree_eexists_cb ;
 int insert_note_in_tree_enotfound_cb ;
 int manipulate_note_in_tree_r (int **,int *,int *,int *,char const*,int ,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int note_write(
 git_oid *notes_commit_out,
 git_oid *notes_blob_out,
 git_repository *repo,
 const git_signature *author,
 const git_signature *committer,
 const char *notes_ref,
 const char *note,
 git_tree *commit_tree,
 const char *target,
 git_commit **parents,
 int allow_note_overwrite)
{
 int error;
 git_oid oid;
 git_tree *tree = ((void*)0);



 if ((error = git_blob_create_from_buffer(&oid, repo, note, strlen(note))) < 0)
  goto cleanup;

 if ((error = manipulate_note_in_tree_r(
  &tree, repo, commit_tree, &oid, target, 0,
  allow_note_overwrite ? insert_note_in_tree_enotfound_cb : insert_note_in_tree_eexists_cb,
  insert_note_in_tree_enotfound_cb)) < 0)
  goto cleanup;

 if (notes_blob_out)
  git_oid_cpy(notes_blob_out, &oid);


 error = git_commit_create(&oid, repo, notes_ref, author, committer,
      ((void*)0), GIT_NOTES_DEFAULT_MSG_ADD,
      tree, *parents == ((void*)0) ? 0 : 1, (const git_commit **) parents);

 if (notes_commit_out)
  git_oid_cpy(notes_commit_out, &oid);

cleanup:
 git_tree_free(tree);
 return error;
}
