
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb ;


 int assert (int) ;
 int git_odb_refresh (int *) ;
 int odb_freshen_1 (int *,int const*,int) ;

int git_odb__freshen(git_odb *db, const git_oid *id)
{
 assert(db && id);

 if (odb_freshen_1(db, id, 0))
  return 1;

 if (!git_odb_refresh(db))
  return odb_freshen_1(db, id, 1);


 return 0;
}
