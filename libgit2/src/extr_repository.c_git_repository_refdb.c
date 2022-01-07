
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_refdb ;


 int GIT_REFCOUNT_INC (int *) ;
 scalar_t__ git_repository_refdb__weakptr (int **,int *) ;

int git_repository_refdb(git_refdb **out, git_repository *repo)
{
 if (git_repository_refdb__weakptr(out, repo) < 0)
  return -1;

 GIT_REFCOUNT_INC(*out);
 return 0;
}
