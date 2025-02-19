
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct packing_data {int index_size; int nr_objects; scalar_t__* index; struct object_entry* objects; } ;
struct TYPE_2__ {int oid; } ;
struct object_entry {TYPE_1__ idx; } ;


 int BUG (char*) ;
 int closest_pow2 (int) ;
 int free (scalar_t__*) ;
 scalar_t__ locate_object_entry_hash (struct packing_data*,int *,int*) ;
 scalar_t__* xcalloc (int,int) ;

__attribute__((used)) static void rehash_objects(struct packing_data *pdata)
{
 uint32_t i;
 struct object_entry *entry;

 pdata->index_size = closest_pow2(pdata->nr_objects * 3);
 if (pdata->index_size < 1024)
  pdata->index_size = 1024;

 free(pdata->index);
 pdata->index = xcalloc(pdata->index_size, sizeof(*pdata->index));

 entry = pdata->objects;

 for (i = 0; i < pdata->nr_objects; i++) {
  int found;
  uint32_t ix = locate_object_entry_hash(pdata,
             &entry->idx.oid,
             &found);

  if (found)
   BUG("Duplicate object in hash");

  pdata->index[ix] = i + 1;
  entry++;
 }
}
