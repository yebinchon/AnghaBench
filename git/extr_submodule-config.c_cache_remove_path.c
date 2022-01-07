
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_entry {struct submodule* config; int ent; } ;
struct submodule_cache {int for_path; } ;
struct submodule {int path; int gitmodules_oid; } ;


 int ent ;
 int free (struct submodule_entry*) ;
 unsigned int hash_oid_string (int *,int ) ;
 int hashmap_entry_init (int *,unsigned int) ;
 struct submodule_entry* hashmap_remove_entry (int *,struct submodule_entry*,int ,int *) ;

__attribute__((used)) static void cache_remove_path(struct submodule_cache *cache,
         struct submodule *submodule)
{
 unsigned int hash = hash_oid_string(&submodule->gitmodules_oid,
         submodule->path);
 struct submodule_entry e;
 struct submodule_entry *removed;
 hashmap_entry_init(&e.ent, hash);
 e.config = submodule;
 removed = hashmap_remove_entry(&cache->for_path, &e, ent, ((void*)0));
 free(removed);
}
