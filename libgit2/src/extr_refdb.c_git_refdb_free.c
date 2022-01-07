
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refdb ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int git_refdb__free ;

void git_refdb_free(git_refdb *db)
{
 if (db == ((void*)0))
  return;

 GIT_REFCOUNT_DEC(db, git_refdb__free);
}
