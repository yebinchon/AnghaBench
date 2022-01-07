
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_refdb ;


 int assert (int) ;
 int git_refdb_ensure_log (int *,char const*) ;
 int git_repository_refdb__weakptr (int **,int *) ;

int git_reference_ensure_log(git_repository *repo, const char *refname)
{
 int error;
 git_refdb *refdb;

 assert(repo && refname);

 if ((error = git_repository_refdb__weakptr(&refdb, repo)) < 0)
  return error;

 return git_refdb_ensure_log(refdb, refname);
}
