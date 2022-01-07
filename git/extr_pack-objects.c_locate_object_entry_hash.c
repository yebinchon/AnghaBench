
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct packing_data {size_t index_size; scalar_t__* index; TYPE_2__* objects; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ idx; } ;


 scalar_t__ oideq (struct object_id const*,int *) ;
 size_t oidhash (struct object_id const*) ;

__attribute__((used)) static uint32_t locate_object_entry_hash(struct packing_data *pdata,
      const struct object_id *oid,
      int *found)
{
 uint32_t i, mask = (pdata->index_size - 1);

 i = oidhash(oid) & mask;

 while (pdata->index[i] > 0) {
  uint32_t pos = pdata->index[i] - 1;

  if (oideq(oid, &pdata->objects[pos].idx.oid)) {
   *found = 1;
   return i;
  }

  i = (i + 1) & mask;
 }

 *found = 0;
 return i;
}
