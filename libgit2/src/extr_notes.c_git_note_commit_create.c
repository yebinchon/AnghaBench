
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target ;
typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_OID_HEXSZ ;
 int git_commit_tree (int **,int *) ;
 int git_oid_tostr (char*,int,int const*) ;
 int git_tree_free (int *) ;
 int note_write (int *,int *,int *,int const*,int const*,int *,char const*,int *,char*,int **,int) ;

int git_note_commit_create(
 git_oid *notes_commit_out,
 git_oid *notes_blob_out,
 git_repository *repo,
 git_commit *parent,
 const git_signature *author,
 const git_signature *committer,
 const git_oid *oid,
 const char *note,
 int allow_note_overwrite)
{
 int error;
 git_tree *tree = ((void*)0);
 char target[GIT_OID_HEXSZ + 1];

 git_oid_tostr(target, sizeof(target), oid);

 if (parent != ((void*)0) && (error = git_commit_tree(&tree, parent)) < 0)
  goto cleanup;

 error = note_write(notes_commit_out, notes_blob_out, repo, author,
   committer, ((void*)0), note, tree, target, &parent, allow_note_overwrite);

 if (error < 0)
  goto cleanup;

cleanup:
 git_tree_free(tree);
 return error;
}
