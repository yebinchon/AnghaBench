
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

__attribute__((used)) static int checkout_lookup_head_tree(git_tree **out, git_repository *repo)
{
 int error = 0;
 git_reference *ref = ((void*)0);
 git_object *head;

 if (!(error = git_repository_head(&ref, repo)) &&
  !(error = git_reference_peel(&head, ref, GIT_OBJECT_TREE)))
  *out = (git_tree *)head;

 git_reference_free(ref);

 return error;
}
