
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_annotated_commit ;


 int GIT_HEAD_FILE ;
 int assert (int) ;
 int git_annotated_commit_from_ref (int **,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,int ) ;

int git_annotated_commit_from_head(
 git_annotated_commit **out,
 git_repository *repo)
{
 git_reference *head;
 int error;

 assert(out && repo);

 *out = ((void*)0);

    if ((error = git_reference_lookup(&head, repo, GIT_HEAD_FILE)) < 0)
  return -1;

 error = git_annotated_commit_from_ref(out, repo, head);

 git_reference_free(head);
 return error;
}
