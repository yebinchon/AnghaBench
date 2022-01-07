
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long CACHE_OC_ADDRESS_ARRAY ;
 int CPU_HAS_P2_FLUSH_BUG ;
 int __flush_cache_one (unsigned long,unsigned long,unsigned long) ;
 TYPE_1__ boot_cpu_data ;
 unsigned long cached_to_uncached ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static inline void flush_cache_one(unsigned long start, unsigned long phys)
{
 unsigned long flags, exec_offset = 0;





 if ((boot_cpu_data.flags & CPU_HAS_P2_FLUSH_BUG) ||
     (start < CACHE_OC_ADDRESS_ARRAY))
  exec_offset = cached_to_uncached;

 local_irq_save(flags);
 __flush_cache_one(start, phys, exec_offset);
 local_irq_restore(flags);
}
