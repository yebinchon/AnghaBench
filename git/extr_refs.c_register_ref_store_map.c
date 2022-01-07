
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store_hash_entry {int ent; } ;
struct ref_store {int dummy; } ;
struct hashmap {int tablesize; } ;


 int BUG (char*,char const*,char const*) ;
 struct ref_store_hash_entry* alloc_ref_store_hash_entry (char const*,struct ref_store*) ;
 int hashmap_init (struct hashmap*,int ,int *,int ) ;
 scalar_t__ hashmap_put (struct hashmap*,int *) ;
 int ref_store_hash_cmp ;

__attribute__((used)) static void register_ref_store_map(struct hashmap *map,
       const char *type,
       struct ref_store *refs,
       const char *name)
{
 struct ref_store_hash_entry *entry;

 if (!map->tablesize)
  hashmap_init(map, ref_store_hash_cmp, ((void*)0), 0);

 entry = alloc_ref_store_hash_entry(name, refs);
 if (hashmap_put(map, &entry->ent))
  BUG("%s ref_store '%s' initialized twice", type, name);
}
