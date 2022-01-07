
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash; } ;
struct pool_entry {size_t len; void const* data; TYPE_1__ ent; } ;
struct hashmap {int tablesize; } ;


 int FLEX_ALLOC_MEM (struct pool_entry*,void const*,void const*,size_t) ;
 int ent ;
 int hashmap_add (struct hashmap*,TYPE_1__*) ;
 int hashmap_entry_init (TYPE_1__*,int ) ;
 struct pool_entry* hashmap_get_entry (struct hashmap*,struct pool_entry*,int ,void const*) ;
 int hashmap_init (struct hashmap*,int ,int *,int ) ;
 int memhash (void const*,size_t) ;
 int pool_entry_cmp ;

const void *memintern(const void *data, size_t len)
{
 static struct hashmap map;
 struct pool_entry key, *e;


 if (!map.tablesize)
  hashmap_init(&map, pool_entry_cmp, ((void*)0), 0);


 hashmap_entry_init(&key.ent, memhash(data, len));
 key.len = len;
 e = hashmap_get_entry(&map, &key, ent, data);
 if (!e) {

  FLEX_ALLOC_MEM(e, data, data, len);
  hashmap_entry_init(&e->ent, key.ent.hash);
  e->len = len;
  hashmap_add(&map, &e->ent);
 }
 return e->data;
}
