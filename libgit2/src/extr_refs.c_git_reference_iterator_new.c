
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference_iterator ;
typedef int git_refdb ;


 int git_refdb_iterator (int **,int *,int *) ;
 scalar_t__ git_repository_refdb__weakptr (int **,int *) ;

int git_reference_iterator_new(git_reference_iterator **out, git_repository *repo)
{
 git_refdb *refdb;

 if (git_repository_refdb__weakptr(&refdb, repo) < 0)
  return -1;

 return git_refdb_iterator(out, refdb, ((void*)0));
}
