
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct cache_entry {int ce_namelen; int ce_mode; int ce_flags; int name; int oid; } ;


 int _ (char*) ;
 int create_ce_flags (int) ;
 int create_ce_mode (unsigned int) ;
 int error (int ,char const*) ;
 struct cache_entry* make_empty_transient_cache_entry (int) ;
 int memcpy (int ,char const*,int) ;
 int oidcpy (int *,struct object_id const*) ;
 int strlen (char const*) ;
 int verify_path (char const*,unsigned int) ;

struct cache_entry *make_transient_cache_entry(unsigned int mode, const struct object_id *oid,
            const char *path, int stage)
{
 struct cache_entry *ce;
 int len;

 if (!verify_path(path, mode)) {
  error(_("invalid path '%s'"), path);
  return ((void*)0);
 }

 len = strlen(path);
 ce = make_empty_transient_cache_entry(len);

 oidcpy(&ce->oid, oid);
 memcpy(ce->name, path, len);
 ce->ce_flags = create_ce_flags(stage);
 ce->ce_namelen = len;
 ce->ce_mode = create_ce_mode(mode);

 return ce;
}
