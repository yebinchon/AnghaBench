
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_note ;
typedef int git_commit ;
typedef int git_blob ;


 int find_blob (int *,int *,char const*) ;
 int find_subtree_r (int **,int *,int *,char const*,int*) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int *,int *) ;
 int git_tree_free (int *) ;
 int note_new (int **,int *,int *,int *) ;

__attribute__((used)) static int note_lookup(
 git_note **out,
 git_repository *repo,
 git_commit *commit,
 git_tree *tree,
 const char *target)
{
 int error, fanout = 0;
 git_oid oid;
 git_blob *blob = ((void*)0);
 git_note *note = ((void*)0);
 git_tree *subtree = ((void*)0);

 if ((error = find_subtree_r(&subtree, tree, repo, target, &fanout)) < 0)
  goto cleanup;

 if ((error = find_blob(&oid, subtree, target + fanout)) < 0)
  goto cleanup;

 if ((error = git_blob_lookup(&blob, repo, &oid)) < 0)
  goto cleanup;

 if ((error = note_new(&note, &oid, commit, blob)) < 0)
  goto cleanup;

 *out = note;

cleanup:
 git_tree_free(subtree);
 git_blob_free(blob);
 return error;
}
