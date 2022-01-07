
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_entry {struct submodule const* config; int ent; } ;
struct submodule_cache {int for_path; } ;
typedef struct submodule {char const* path; int gitmodules_oid; } const submodule ;
struct object_id {int dummy; } ;


 int ent ;
 unsigned int hash_oid_string (struct object_id const*,char const*) ;
 int hashmap_entry_init (int *,unsigned int) ;
 struct submodule_entry* hashmap_get_entry (int *,struct submodule_entry*,int ,int *) ;
 int oidcpy (int *,struct object_id const*) ;

__attribute__((used)) static const struct submodule *cache_lookup_path(struct submodule_cache *cache,
  const struct object_id *gitmodules_oid, const char *path)
{
 struct submodule_entry *entry;
 unsigned int hash = hash_oid_string(gitmodules_oid, path);
 struct submodule_entry key;
 struct submodule key_config;

 oidcpy(&key_config.gitmodules_oid, gitmodules_oid);
 key_config.path = path;

 hashmap_entry_init(&key.ent, hash);
 key.config = &key_config;

 entry = hashmap_get_entry(&cache->for_path, &key, ent, ((void*)0));
 if (entry)
  return entry->config;
 return ((void*)0);
}
