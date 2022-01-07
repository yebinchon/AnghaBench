
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int GIT_EUNBORNBRANCH ;
 int git_error_clear () ;
 int git_reference_free (int *) ;
 int git_repository_head (int **,int *) ;

int git_repository_head_unborn(git_repository *repo)
{
 git_reference *ref = ((void*)0);
 int error;

 error = git_repository_head(&ref, repo);
 git_reference_free(ref);

 if (error == GIT_EUNBORNBRANCH) {
  git_error_clear();
  return 1;
 }

 if (error < 0)
  return -1;

 return 0;
}
