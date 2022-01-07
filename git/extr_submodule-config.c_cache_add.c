
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_entry {int ent; struct submodule* config; } ;
struct submodule_cache {int for_name; } ;
struct submodule {int name; int gitmodules_oid; } ;


 unsigned int hash_oid_string (int *,int ) ;
 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,unsigned int) ;
 struct submodule_entry* xmalloc (int) ;

__attribute__((used)) static void cache_add(struct submodule_cache *cache,
        struct submodule *submodule)
{
 unsigned int hash = hash_oid_string(&submodule->gitmodules_oid,
         submodule->name);
 struct submodule_entry *e = xmalloc(sizeof(*e));
 hashmap_entry_init(&e->ent, hash);
 e->config = submodule;
 hashmap_add(&cache->for_name, &e->ent);
}
