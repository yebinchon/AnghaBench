
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mem_vector {unsigned long long start; unsigned long long size; } ;
struct TYPE_3__ {unsigned long long start; unsigned long long size; } ;


 scalar_t__ MAX_SLOT_AREA ;
 int __process_mem_region (struct mem_vector*,unsigned long long,unsigned long long) ;
 void* clamp (unsigned long long,unsigned long long,unsigned long long) ;
 int debug_putstr (char*) ;
 TYPE_1__* immovable_mem ;
 int mem_overlaps (struct mem_vector*,TYPE_1__*) ;
 int num_immovable_mem ;
 scalar_t__ slot_area_index ;

__attribute__((used)) static bool process_mem_region(struct mem_vector *region,
          unsigned long long minimum,
          unsigned long long image_size)
{
 int i;




 if (!num_immovable_mem) {
  __process_mem_region(region, minimum, image_size);

  if (slot_area_index == MAX_SLOT_AREA) {
   debug_putstr("Aborted e820/efi memmap scan (slot_areas full)!\n");
   return 1;
  }
  return 0;
 }
 return 0;
}
