
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lazy_name_thread_data {TYPE_2__* istate; TYPE_1__* lazy_entries; } ;
struct cache_entry {int ent; int ce_flags; } ;
struct TYPE_4__ {int cache_nr; int name_hash; struct cache_entry** cache; } ;
struct TYPE_3__ {int hash_name; } ;


 int CE_HASHED ;
 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,int ) ;

__attribute__((used)) static void *lazy_name_thread_proc(void *_data)
{
 struct lazy_name_thread_data *d = _data;
 int k;

 for (k = 0; k < d->istate->cache_nr; k++) {
  struct cache_entry *ce_k = d->istate->cache[k];
  ce_k->ce_flags |= CE_HASHED;
  hashmap_entry_init(&ce_k->ent, d->lazy_entries[k].hash_name);
  hashmap_add(&d->istate->name_hash, &ce_k->ent);
 }

 return ((void*)0);
}
