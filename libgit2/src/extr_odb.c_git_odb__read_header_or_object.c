
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_6__ {size_t size; int type; } ;
struct TYPE_7__ {TYPE_1__ cached; } ;
typedef TYPE_2__ git_odb_object ;
typedef int git_odb ;
typedef int git_object_t ;


 int GIT_ENOTFOUND ;
 int GIT_OID_HEXSZ ;
 int GIT_PASSTHROUGH ;
 int assert (int ) ;
 int error_null_oid (int,char*) ;
 TYPE_2__* git_cache_get_raw (int ,int const*) ;
 int git_odb__error_notfound (char*,int const*,int ) ;
 int git_odb_read (TYPE_2__**,int *,int const*) ;
 int git_odb_refresh (int *) ;
 scalar_t__ git_oid_is_zero (int const*) ;
 int odb_cache (int *) ;
 int odb_read_header_1 (size_t*,int *,int *,int const*,int) ;

int git_odb__read_header_or_object(
 git_odb_object **out, size_t *len_p, git_object_t *type_p,
 git_odb *db, const git_oid *id)
{
 int error = GIT_ENOTFOUND;
 git_odb_object *object;

 assert(db && id && out && len_p && type_p);

 *out = ((void*)0);

 if (git_oid_is_zero(id))
  return error_null_oid(GIT_ENOTFOUND, "cannot read object");

 if ((object = git_cache_get_raw(odb_cache(db), id)) != ((void*)0)) {
  *len_p = object->cached.size;
  *type_p = object->cached.type;
  *out = object;
  return 0;
 }

 error = odb_read_header_1(len_p, type_p, db, id, 0);

 if (error == GIT_ENOTFOUND && !git_odb_refresh(db))
  error = odb_read_header_1(len_p, type_p, db, id, 1);

 if (error == GIT_ENOTFOUND)
  return git_odb__error_notfound("cannot read header for", id, GIT_OID_HEXSZ);


 if (!error)
  return 0;

 if (error == GIT_PASSTHROUGH) {




  error = git_odb_read(&object, db, id);
  if (!error) {
   *len_p = object->cached.size;
   *type_p = object->cached.type;
   *out = object;
  }
 }

 return error;
}
