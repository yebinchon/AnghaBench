
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _refdb; } ;
typedef TYPE_1__ git_repository ;
typedef int git_refdb ;


 int GIT_REFCOUNT_INC (int *) ;
 int GIT_REFCOUNT_OWN (int *,TYPE_1__*) ;
 int * git__swap (int ,int *) ;
 int git_refdb_free (int *) ;

__attribute__((used)) static void set_refdb(git_repository *repo, git_refdb *refdb)
{
 if (refdb) {
  GIT_REFCOUNT_OWN(refdb, repo);
  GIT_REFCOUNT_INC(refdb);
 }

 if ((refdb = git__swap(repo->_refdb, refdb)) != ((void*)0)) {
  GIT_REFCOUNT_OWN(refdb, ((void*)0));
  git_refdb_free(refdb);
 }
}
