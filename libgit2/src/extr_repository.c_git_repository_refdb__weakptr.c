
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * _refdb; } ;
typedef TYPE_1__ git_repository ;
typedef int git_refdb ;


 int GIT_REFCOUNT_OWN (int *,TYPE_1__*) ;
 int assert (int) ;
 int * git__compare_and_swap (int **,int *,int *) ;
 int git_refdb_free (int *) ;
 int git_refdb_open (int **,TYPE_1__*) ;

int git_repository_refdb__weakptr(git_refdb **out, git_repository *repo)
{
 int error = 0;

 assert(out && repo);

 if (repo->_refdb == ((void*)0)) {
  git_refdb *refdb;

  error = git_refdb_open(&refdb, repo);
  if (!error) {
   GIT_REFCOUNT_OWN(refdb, repo);

   refdb = git__compare_and_swap(&repo->_refdb, ((void*)0), refdb);
   if (refdb != ((void*)0)) {
    GIT_REFCOUNT_OWN(refdb, ((void*)0));
    git_refdb_free(refdb);
   }
  }
 }

 *out = repo->_refdb;
 return error;
}
