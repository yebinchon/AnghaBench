
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {int data; int type; int len; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
typedef int git_odb_object ;
struct TYPE_14__ {int (* read ) (int *,int *,int *,TYPE_2__*,int const*) ;int refresh; } ;
typedef TYPE_2__ git_odb_backend ;
struct TYPE_12__ {size_t length; } ;
struct TYPE_15__ {TYPE_11__ backends; } ;
typedef TYPE_3__ git_odb ;
struct TYPE_16__ {TYPE_2__* backend; } ;
typedef TYPE_4__ backend_internal ;


 int GIT_ENOTFOUND ;
 int GIT_PASSTHROUGH ;
 int git__free (int ) ;
 int * git_cache_store_raw (int ,int *) ;
 int git_error_clear () ;
 int git_odb__error_mismatch (int const*,int *) ;
 scalar_t__ git_odb__strict_hash_verification ;
 int git_odb_hash (int *,int ,int ,int ) ;
 int git_oid_equal (int const*,int *) ;
 TYPE_4__* git_vector_get (TYPE_11__*,size_t) ;
 int odb_cache (TYPE_3__*) ;
 int * odb_object__alloc (int const*,TYPE_1__*) ;
 int odb_read_hardcoded (int*,TYPE_1__*,int const*) ;
 int stub1 (int *,int *,int *,TYPE_2__*,int const*) ;

__attribute__((used)) static int odb_read_1(git_odb_object **out, git_odb *db, const git_oid *id,
  bool only_refreshed)
{
 size_t i;
 git_rawobj raw;
 git_odb_object *object;
 git_oid hashed;
 bool found = 0;
 int error = 0;

 if (!only_refreshed) {
  if ((error = odb_read_hardcoded(&found, &raw, id)) < 0)
   return error;
 }

 for (i = 0; i < db->backends.length && !found; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *b = internal->backend;

  if (only_refreshed && !b->refresh)
   continue;

  if (b->read != ((void*)0)) {
   error = b->read(&raw.data, &raw.len, &raw.type, b, id);
   if (error == GIT_PASSTHROUGH || error == GIT_ENOTFOUND)
    continue;

   if (error < 0)
    return error;

   found = 1;
  }
 }

 if (!found)
  return GIT_ENOTFOUND;

 if (git_odb__strict_hash_verification) {
  if ((error = git_odb_hash(&hashed, raw.data, raw.len, raw.type)) < 0)
   goto out;

  if (!git_oid_equal(id, &hashed)) {
   error = git_odb__error_mismatch(id, &hashed);
   goto out;
  }
 }

 git_error_clear();
 if ((object = odb_object__alloc(id, &raw)) == ((void*)0)) {
  error = -1;
  goto out;
 }

 *out = git_cache_store_raw(odb_cache(db), object);

out:
 if (error)
  git__free(raw.data);
 return error;
}
