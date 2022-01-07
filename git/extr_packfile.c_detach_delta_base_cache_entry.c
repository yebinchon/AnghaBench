
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_base_cache_entry {scalar_t__ size; int lru; int key; int ent; } ;


 int delta_base_cache ;
 int delta_base_cached ;
 int free (struct delta_base_cache_entry*) ;
 int hashmap_remove (int *,int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void detach_delta_base_cache_entry(struct delta_base_cache_entry *ent)
{
 hashmap_remove(&delta_base_cache, &ent->ent, &ent->key);
 list_del(&ent->lru);
 delta_base_cached -= ent->size;
 free(ent);
}
