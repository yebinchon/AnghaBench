
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ways; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 int CACHE_OC_ADDRESS_ARRAY ;
 int L1_CACHE_BYTES ;
 int back_to_cached () ;
 TYPE_2__ current_cpu_data ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sh2a_flush_oc_line (unsigned long,int) ;
 int sh2a_invalidate_line (int ,unsigned long) ;

__attribute__((used)) static void sh2a__flush_purge_region(void *start, int size)
{
 unsigned long v;
 unsigned long begin, end;
 unsigned long flags;

 begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
 end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
  & ~(L1_CACHE_BYTES-1);

 local_irq_save(flags);
 jump_to_uncached();

 for (v = begin; v < end; v+=L1_CACHE_BYTES) {






  sh2a_invalidate_line(CACHE_OC_ADDRESS_ARRAY, v);
 }

 back_to_cached();
 local_irq_restore(flags);
}
