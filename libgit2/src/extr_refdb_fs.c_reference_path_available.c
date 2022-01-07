
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct packref {int name; } ;
struct TYPE_4__ {int refcache; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_refdb_backend ;


 int GIT_EEXISTS ;
 int GIT_ERROR_REFERENCE ;
 int git_error_set (int ,char*,char const*) ;
 struct packref* git_sortedcache_entry (int ,size_t) ;
 size_t git_sortedcache_entrycount (int ) ;
 int git_sortedcache_rlock (int ) ;
 int git_sortedcache_runlock (int ) ;
 int packed_reload (TYPE_1__*) ;
 int ref_is_available (char const*,char const*,int ) ;
 int refdb_fs_backend__exists (int*,int *,char const*) ;

__attribute__((used)) static int reference_path_available(
 refdb_fs_backend *backend,
 const char *new_ref,
 const char* old_ref,
 int force)
{
 size_t i;
 int error;

 if ((error = packed_reload(backend)) < 0)
  return error;

 if (!force) {
  int exists;

  if ((error = refdb_fs_backend__exists(
   &exists, (git_refdb_backend *)backend, new_ref)) < 0) {
   return error;
  }

  if (exists) {
   git_error_set(GIT_ERROR_REFERENCE,
    "failed to write reference '%s': a reference with "
    "that name already exists.", new_ref);
   return GIT_EEXISTS;
  }
 }

 git_sortedcache_rlock(backend->refcache);

 for (i = 0; i < git_sortedcache_entrycount(backend->refcache); ++i) {
  struct packref *ref = git_sortedcache_entry(backend->refcache, i);

  if (ref && !ref_is_available(old_ref, new_ref, ref->name)) {
   git_sortedcache_runlock(backend->refcache);
   git_error_set(GIT_ERROR_REFERENCE,
    "path to reference '%s' collides with existing one", new_ref);
   return -1;
  }
 }

 git_sortedcache_runlock(backend->refcache);
 return 0;
}
