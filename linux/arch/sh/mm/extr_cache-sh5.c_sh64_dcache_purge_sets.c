
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry_mask; int entry_shift; int sets; unsigned long long way_size; unsigned long long ways; int flags; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 int SH_CACHE_MODE_WT ;
 int __raw_readb (unsigned long) ;
 TYPE_2__* cpu_data ;
 scalar_t__ dummy_alloco_area ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void sh64_dcache_purge_sets(int sets_to_purge_base, int n_sets)
{




 int dummy_buffer_base_set;
 unsigned long long eaddr, eaddr0, eaddr1;
 int j;
 int set_offset;

 dummy_buffer_base_set = ((int)&dummy_alloco_area &
     cpu_data->dcache.entry_mask) >>
     cpu_data->dcache.entry_shift;
 set_offset = sets_to_purge_base - dummy_buffer_base_set;

 for (j = 0; j < n_sets; j++, set_offset++) {
  set_offset &= (cpu_data->dcache.sets - 1);
  eaddr0 = (unsigned long long)dummy_alloco_area +
   (set_offset << cpu_data->dcache.entry_shift);
  eaddr1 = eaddr0 + cpu_data->dcache.way_size *
      cpu_data->dcache.ways;

  for (eaddr = eaddr0; eaddr < eaddr1;
       eaddr += cpu_data->dcache.way_size) {
   __asm__ __volatile__ ("alloco %0, 0" : : "r" (eaddr));
   __asm__ __volatile__ ("synco");
  }

  eaddr1 = eaddr0 + cpu_data->dcache.way_size *
      cpu_data->dcache.ways;

  for (eaddr = eaddr0; eaddr < eaddr1;
       eaddr += cpu_data->dcache.way_size) {




   if (test_bit(SH_CACHE_MODE_WT, &(cpu_data->dcache.flags)))
    __raw_readb((unsigned long)eaddr);
  }
 }






}
