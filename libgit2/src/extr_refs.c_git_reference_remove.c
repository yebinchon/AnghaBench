
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_refdb ;


 int git_refdb_delete (int *,char const*,int *,int *) ;
 int git_repository_refdb__weakptr (int **,int *) ;

int git_reference_remove(git_repository *repo, const char *name)
{
 git_refdb *db;
 int error;

 if ((error = git_repository_refdb__weakptr(&db, repo)) < 0)
  return error;

 return git_refdb_delete(db, name, ((void*)0), ((void*)0));
}
