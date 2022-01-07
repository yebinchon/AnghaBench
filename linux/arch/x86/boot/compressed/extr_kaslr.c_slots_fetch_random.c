
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long num; unsigned long addr; } ;


 unsigned long CONFIG_PHYSICAL_ALIGN ;
 int debug_putstr (char*) ;
 unsigned long kaslr_get_random_long (char*) ;
 int slot_area_index ;
 TYPE_1__* slot_areas ;
 unsigned long slot_max ;

__attribute__((used)) static unsigned long slots_fetch_random(void)
{
 unsigned long slot;
 int i;


 if (slot_max == 0)
  return 0;

 slot = kaslr_get_random_long("Physical") % slot_max;

 for (i = 0; i < slot_area_index; i++) {
  if (slot >= slot_areas[i].num) {
   slot -= slot_areas[i].num;
   continue;
  }
  return slot_areas[i].addr + slot * CONFIG_PHYSICAL_ALIGN;
 }

 if (i == slot_area_index)
  debug_putstr("slots_fetch_random() failed!?\n");
 return 0;
}
