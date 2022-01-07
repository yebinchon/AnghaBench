
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int odb_free ;

void git_odb_free(git_odb *db)
{
 if (db == ((void*)0))
  return;

 GIT_REFCOUNT_DEC(db, odb_free);
}
