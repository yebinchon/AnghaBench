
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb_object ;
typedef int git_odb ;


 int assert (int) ;
 int * git_cache_get_raw (int ,int const*) ;
 int git_odb_object_free (int *) ;
 int git_odb_refresh (int *) ;
 scalar_t__ git_oid_is_zero (int const*) ;
 int odb_cache (int *) ;
 int odb_exists_1 (int *,int const*,int) ;

int git_odb_exists(git_odb *db, const git_oid *id)
{
 git_odb_object *object;

 assert(db && id);

 if (git_oid_is_zero(id))
  return 0;

 if ((object = git_cache_get_raw(odb_cache(db), id)) != ((void*)0)) {
  git_odb_object_free(object);
  return 1;
 }

 if (odb_exists_1(db, id, 0))
  return 1;

 if (!git_odb_refresh(db))
  return odb_exists_1(db, id, 1);


 return 0;
}
