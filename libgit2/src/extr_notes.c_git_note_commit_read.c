
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_note ;
typedef int git_commit ;


 int GIT_OID_HEXSZ ;
 int git_commit_tree (int **,int *) ;
 int git_oid_tostr (char*,int,int const*) ;
 int git_tree_free (int *) ;
 int note_lookup (int **,int *,int *,int *,char*) ;

int git_note_commit_read(
 git_note **out,
 git_repository *repo,
 git_commit *notes_commit,
 const git_oid *oid)
{
 int error;
 git_tree *tree = ((void*)0);
 char target[GIT_OID_HEXSZ + 1];

 git_oid_tostr(target, sizeof(target), oid);

 if ((error = git_commit_tree(&tree, notes_commit)) < 0)
  goto cleanup;

 error = note_lookup(out, repo, notes_commit, tree, target);

cleanup:
 git_tree_free(tree);
 return error;
}
