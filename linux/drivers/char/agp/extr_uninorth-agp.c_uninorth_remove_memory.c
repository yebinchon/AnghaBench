
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct agp_memory {int type; size_t page_count; } ;
typedef size_t off_t ;
struct TYPE_5__ {int * gatt_table; TYPE_1__* driver; } ;
struct TYPE_4__ {int (* agp_type_to_mask_type ) (TYPE_2__*,int) ;} ;


 int EINVAL ;
 TYPE_2__* agp_bridge ;
 int mb () ;
 int scratch_value ;
 int stub1 (TYPE_2__*,int) ;
 int uninorth_tlbflush (struct agp_memory*) ;

__attribute__((used)) static int uninorth_remove_memory(struct agp_memory *mem, off_t pg_start, int type)
{
 size_t i;
 u32 *gp;
 int mask_type;

 if (type != mem->type)
  return -EINVAL;

 mask_type = agp_bridge->driver->agp_type_to_mask_type(agp_bridge, type);
 if (mask_type != 0) {

  return -EINVAL;
 }

 if (mem->page_count == 0)
  return 0;

 gp = (u32 *) &agp_bridge->gatt_table[pg_start];
 for (i = 0; i < mem->page_count; ++i) {
  gp[i] = scratch_value;
 }
 mb();
 uninorth_tlbflush(mem);

 return 0;
}
