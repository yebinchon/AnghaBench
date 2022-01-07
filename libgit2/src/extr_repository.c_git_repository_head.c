
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int GIT_EUNBORNBRANCH ;
 int GIT_HEAD_FILE ;
 scalar_t__ GIT_REFERENCE_DIRECT ;
 int assert (int **) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,int ) ;
 int git_reference_lookup_resolved (int **,int *,int ,int) ;
 int git_reference_symbolic_target (int *) ;
 scalar_t__ git_reference_type (int *) ;

int git_repository_head(git_reference **head_out, git_repository *repo)
{
 git_reference *head;
 int error;

 assert(head_out);

 if ((error = git_reference_lookup(&head, repo, GIT_HEAD_FILE)) < 0)
  return error;

 if (git_reference_type(head) == GIT_REFERENCE_DIRECT) {
  *head_out = head;
  return 0;
 }

 error = git_reference_lookup_resolved(head_out, repo, git_reference_symbolic_target(head), -1);
 git_reference_free(head);

 return error == GIT_ENOTFOUND ? GIT_EUNBORNBRANCH : error;
}
