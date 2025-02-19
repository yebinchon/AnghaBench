
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_17__ ;


struct TYPE_31__ {void* data; int type; int len; int member_0; } ;
typedef TYPE_2__ git_rawobj ;
struct TYPE_30__ {int member_0; } ;
struct TYPE_32__ {TYPE_1__ member_0; } ;
typedef TYPE_3__ git_oid ;
typedef int git_odb_object ;
struct TYPE_33__ {int (* read_prefix ) (TYPE_3__*,void**,int *,int *,TYPE_4__*,TYPE_3__ const*,size_t) ;int refresh; } ;
typedef TYPE_4__ git_odb_backend ;
struct TYPE_29__ {size_t length; } ;
struct TYPE_34__ {TYPE_17__ backends; } ;
typedef TYPE_5__ git_odb ;
struct TYPE_35__ {int ptr; } ;
typedef TYPE_6__ git_buf ;
struct TYPE_36__ {TYPE_4__* backend; } ;
typedef TYPE_7__ backend_internal ;


 TYPE_6__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_PASSTHROUGH ;
 int git__free (void*) ;
 int git_buf_dispose (TYPE_6__*) ;
 int git_buf_printf (TYPE_6__*,char*,int ) ;
 int * git_cache_store_raw (int ,int *) ;
 int git_odb__error_ambiguous (int ) ;
 int git_odb__error_mismatch (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ git_odb__strict_hash_verification ;
 int git_odb_hash (TYPE_3__*,void*,int ,int ) ;
 scalar_t__ git_oid__cmp (TYPE_3__*,TYPE_3__*) ;
 int git_oid_equal (TYPE_3__*,TYPE_3__*) ;
 int git_oid_tostr_s (TYPE_3__*) ;
 TYPE_7__* git_vector_get (TYPE_17__*,size_t) ;
 int odb_cache (TYPE_5__*) ;
 int * odb_object__alloc (TYPE_3__*,TYPE_2__*) ;
 int stub1 (TYPE_3__*,void**,int *,int *,TYPE_4__*,TYPE_3__ const*,size_t) ;

__attribute__((used)) static int read_prefix_1(git_odb_object **out, git_odb *db,
  const git_oid *key, size_t len, bool only_refreshed)
{
 size_t i;
 int error = 0;
 git_oid found_full_oid = {{0}};
 git_rawobj raw = {0};
 void *data = ((void*)0);
 bool found = 0;
 git_odb_object *object;

 for (i = 0; i < db->backends.length; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *b = internal->backend;

  if (only_refreshed && !b->refresh)
   continue;

  if (b->read_prefix != ((void*)0)) {
   git_oid full_oid;
   error = b->read_prefix(&full_oid, &raw.data, &raw.len, &raw.type, b, key, len);

   if (error == GIT_ENOTFOUND || error == GIT_PASSTHROUGH) {
    error = 0;
    continue;
   }

   if (error)
    goto out;

   git__free(data);
   data = raw.data;

   if (found && git_oid__cmp(&full_oid, &found_full_oid)) {
    git_buf buf = GIT_BUF_INIT;

    git_buf_printf(&buf, "multiple matches for prefix: %s",
     git_oid_tostr_s(&full_oid));
    git_buf_printf(&buf, " %s",
     git_oid_tostr_s(&found_full_oid));

    error = git_odb__error_ambiguous(buf.ptr);
    git_buf_dispose(&buf);
    goto out;
   }

   found_full_oid = full_oid;
   found = 1;
  }
 }

 if (!found)
  return GIT_ENOTFOUND;

 if (git_odb__strict_hash_verification) {
  git_oid hash;

  if ((error = git_odb_hash(&hash, raw.data, raw.len, raw.type)) < 0)
   goto out;

  if (!git_oid_equal(&found_full_oid, &hash)) {
   error = git_odb__error_mismatch(&found_full_oid, &hash);
   goto out;
  }
 }

 if ((object = odb_object__alloc(&found_full_oid, &raw)) == ((void*)0)) {
  error = -1;
  goto out;
 }

 *out = git_cache_store_raw(odb_cache(db), object);

out:
 if (error)
  git__free(raw.data);

 return error;
}
