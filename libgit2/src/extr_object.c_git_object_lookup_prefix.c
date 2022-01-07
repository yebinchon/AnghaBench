
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {int objects; } ;
typedef TYPE_3__ git_repository ;
struct TYPE_21__ {int member_0; } ;
struct TYPE_23__ {TYPE_2__ member_0; } ;
typedef TYPE_4__ git_oid ;
typedef int git_odb_object ;
typedef int git_odb ;
typedef scalar_t__ git_object_t ;
struct TYPE_20__ {scalar_t__ type; } ;
struct TYPE_24__ {TYPE_1__ cached; } ;
typedef TYPE_5__ git_object ;
struct TYPE_25__ {scalar_t__ flags; } ;
typedef TYPE_6__ git_cached_obj ;


 scalar_t__ GIT_CACHE_STORE_PARSED ;
 scalar_t__ GIT_CACHE_STORE_RAW ;
 int GIT_EAMBIGUOUS ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_OBJECT ;
 scalar_t__ GIT_OBJECT_ANY ;
 size_t GIT_OID_HEXSZ ;
 size_t GIT_OID_MINPREFIXLEN ;
 int assert (int) ;
 TYPE_6__* git_cache_get_any (int *,TYPE_4__ const*) ;
 int git_error_set (int ,char*) ;
 int git_object__from_odb_object (TYPE_5__**,TYPE_3__*,int *,scalar_t__) ;
 int git_object_free (TYPE_5__*) ;
 int git_odb_object_free (int *) ;
 int git_odb_read (int **,int *,TYPE_4__ const*) ;
 int git_odb_read_prefix (int **,int *,TYPE_4__*,size_t) ;
 int git_oid__cpy_prefix (TYPE_4__*,TYPE_4__ const*,size_t) ;
 int git_repository_odb__weakptr (int **,TYPE_3__*) ;

int git_object_lookup_prefix(
 git_object **object_out,
 git_repository *repo,
 const git_oid *id,
 size_t len,
 git_object_t type)
{
 git_object *object = ((void*)0);
 git_odb *odb = ((void*)0);
 git_odb_object *odb_obj = ((void*)0);
 int error = 0;

 assert(repo && object_out && id);

 if (len < GIT_OID_MINPREFIXLEN) {
  git_error_set(GIT_ERROR_OBJECT, "ambiguous lookup - OID prefix is too short");
  return GIT_EAMBIGUOUS;
 }

 error = git_repository_odb__weakptr(&odb, repo);
 if (error < 0)
  return error;

 if (len > GIT_OID_HEXSZ)
  len = GIT_OID_HEXSZ;

 if (len == GIT_OID_HEXSZ) {
  git_cached_obj *cached = ((void*)0);




  cached = git_cache_get_any(&repo->objects, id);
  if (cached != ((void*)0)) {
   if (cached->flags == GIT_CACHE_STORE_PARSED) {
    object = (git_object *)cached;

    if (type != GIT_OBJECT_ANY && type != object->cached.type) {
     git_object_free(object);
     git_error_set(GIT_ERROR_INVALID,
      "the requested type does not match the type in ODB");
     return GIT_ENOTFOUND;
    }

    *object_out = object;
    return 0;
   } else if (cached->flags == GIT_CACHE_STORE_RAW) {
    odb_obj = (git_odb_object *)cached;
   } else {
    assert(!"Wrong caching type in the global object cache");
   }
  } else {





   error = git_odb_read(&odb_obj, odb, id);
  }
 } else {
  git_oid short_oid = {{ 0 }};

  git_oid__cpy_prefix(&short_oid, id, len);
  error = git_odb_read_prefix(&odb_obj, odb, &short_oid, len);
 }

 if (error < 0)
  return error;

 error = git_object__from_odb_object(object_out, repo, odb_obj, type);

 git_odb_object_free(odb_obj);

 return error;
}
