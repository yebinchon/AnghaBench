
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;


 int GIT_OBJECT_TREE ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int *) ;

int git_repository_head_tree(git_tree **tree, git_repository *repo)
{
 git_reference *head;
 git_object *obj;
 int error;

 if ((error = git_repository_head(&head, repo)) < 0)
  return error;

 if ((error = git_reference_peel(&obj, head, GIT_OBJECT_TREE)) < 0)
  goto cleanup;

 *tree = (git_tree *)obj;

cleanup:
 git_reference_free(head);
 return error;
}
