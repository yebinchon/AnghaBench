
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct packref {int peel; int oid; } ;
struct TYPE_4__ {int refcache; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_reference ;


 int * git_reference__alloc (char const*,int *,int *) ;
 struct packref* git_sortedcache_lookup (int ,char const*) ;
 scalar_t__ git_sortedcache_rlock (int ) ;
 int git_sortedcache_runlock (int ) ;
 int packed_reload (TYPE_1__*) ;
 int ref_error_notfound (char const*) ;

__attribute__((used)) static int packed_lookup(
 git_reference **out,
 refdb_fs_backend *backend,
 const char *ref_name)
{
 int error = 0;
 struct packref *entry;

 if ((error = packed_reload(backend)) < 0)
  return error;

 if (git_sortedcache_rlock(backend->refcache) < 0)
  return -1;

 entry = git_sortedcache_lookup(backend->refcache, ref_name);
 if (!entry) {
  error = ref_error_notfound(ref_name);
 } else {
  *out = git_reference__alloc(ref_name, &entry->oid, &entry->peel);
  if (!*out)
   error = -1;
 }

 git_sortedcache_runlock(backend->refcache);

 return error;
}
