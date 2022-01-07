
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_note_iterator ;
typedef int git_commit ;


 int git_commit_tree (int **,int *) ;
 int git_iterator_for_tree (int **,int *,int *) ;
 int git_iterator_free (int *) ;
 int git_tree_free (int *) ;

int git_note_commit_iterator_new(
 git_note_iterator **it,
 git_commit *notes_commit)
{
 int error;
 git_tree *tree;

 if ((error = git_commit_tree(&tree, notes_commit)) < 0)
  goto cleanup;

 if ((error = git_iterator_for_tree(it, tree, ((void*)0))) < 0)
  git_iterator_free(*it);

cleanup:
 git_tree_free(tree);

 return error;
}
