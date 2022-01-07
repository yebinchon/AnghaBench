
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot_area {unsigned long num; int addr; } ;
struct mem_vector {unsigned long size; int start; } ;


 unsigned long CONFIG_PHYSICAL_ALIGN ;
 scalar_t__ MAX_SLOT_AREA ;
 scalar_t__ slot_area_index ;
 struct slot_area* slot_areas ;
 unsigned long slot_max ;

__attribute__((used)) static void store_slot_info(struct mem_vector *region, unsigned long image_size)
{
 struct slot_area slot_area;

 if (slot_area_index == MAX_SLOT_AREA)
  return;

 slot_area.addr = region->start;
 slot_area.num = (region->size - image_size) /
   CONFIG_PHYSICAL_ALIGN + 1;

 if (slot_area.num > 0) {
  slot_areas[slot_area_index++] = slot_area;
  slot_max += slot_area.num;
 }
}
