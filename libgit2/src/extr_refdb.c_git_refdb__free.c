
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refdb ;


 int git__free (int *) ;
 int git__memzero (int *,int) ;
 int refdb_free_backend (int *) ;

void git_refdb__free(git_refdb *db)
{
 refdb_free_backend(db);
 git__memzero(db, sizeof(*db));
 git__free(db);
}
