
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_6__ {int type; } ;
struct TYPE_7__ {TYPE_1__ cached; } ;
typedef TYPE_2__ git_odb_object ;
typedef int git_odb ;
typedef int git_object_t ;


 int GIT_ENOTFOUND ;
 int GIT_PASSTHROUGH ;
 int error_null_oid (int ,char*) ;
 TYPE_2__* git_cache_get_raw (int ,int const*) ;
 int git_odb_object_free (TYPE_2__*) ;
 scalar_t__ git_oid_is_zero (int const*) ;
 int odb_cache (int *) ;
 int odb_read_1 (TYPE_2__**,int *,int const*,int) ;
 int odb_read_header_1 (size_t*,int *,int *,int const*,int) ;

__attribute__((used)) static int odb_otype_fast(git_object_t *type_p, git_odb *db, const git_oid *id)
{
 git_odb_object *object;
 size_t _unused;
 int error;

 if (git_oid_is_zero(id))
  return error_null_oid(GIT_ENOTFOUND, "cannot get object type");

 if ((object = git_cache_get_raw(odb_cache(db), id)) != ((void*)0)) {
  *type_p = object->cached.type;
  git_odb_object_free(object);
  return 0;
 }

 error = odb_read_header_1(&_unused, type_p, db, id, 0);

 if (error == GIT_PASSTHROUGH) {
  error = odb_read_1(&object, db, id, 0);
  if (!error)
   *type_p = object->cached.type;
  git_odb_object_free(object);
 }

 return error;
}
