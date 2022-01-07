
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct packing_data {int* index; struct object_entry* objects; int index_size; } ;
struct object_id {int dummy; } ;
struct object_entry {int dummy; } ;


 size_t locate_object_entry_hash (struct packing_data*,struct object_id const*,int*) ;

struct object_entry *packlist_find(struct packing_data *pdata,
       const struct object_id *oid)
{
 uint32_t i;
 int found;

 if (!pdata->index_size)
  return ((void*)0);

 i = locate_object_entry_hash(pdata, oid, &found);

 if (!found)
  return ((void*)0);

 return &pdata->objects[pdata->index[i] - 1];
}
