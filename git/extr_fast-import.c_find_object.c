
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int* hash; } ;
struct TYPE_2__ {int oid; } ;
struct object_entry {TYPE_1__ idx; struct object_entry* next; } ;


 struct object_entry** object_table ;
 scalar_t__ oideq (struct object_id*,int *) ;

__attribute__((used)) static struct object_entry *find_object(struct object_id *oid)
{
 unsigned int h = oid->hash[0] << 8 | oid->hash[1];
 struct object_entry *e;
 for (e = object_table[h]; e; e = e->next)
  if (oideq(oid, &e->idx.oid))
   return e;
 return ((void*)0);
}
