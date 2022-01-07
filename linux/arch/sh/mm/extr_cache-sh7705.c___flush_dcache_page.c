
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long ways; unsigned long sets; unsigned long entry_shift; scalar_t__ way_incr; scalar_t__ linesz; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 unsigned long CACHE_OC_ADDRESS_ARRAY ;
 unsigned long SH_CACHE_UPDATED ;
 unsigned long SH_CACHE_VALID ;
 int __raw_readl (unsigned long) ;
 int __raw_writel (unsigned long,unsigned long) ;
 int back_to_cached () ;
 TYPE_2__ current_cpu_data ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void __flush_dcache_page(unsigned long phys)
{
 unsigned long ways, waysize, addrstart;
 unsigned long flags;

 phys |= SH_CACHE_VALID;
 local_irq_save(flags);
 jump_to_uncached();

 ways = current_cpu_data.dcache.ways;
 waysize = current_cpu_data.dcache.sets;
 waysize <<= current_cpu_data.dcache.entry_shift;

 addrstart = CACHE_OC_ADDRESS_ARRAY;

 do {
  unsigned long addr;

  for (addr = addrstart;
       addr < addrstart + waysize;
       addr += current_cpu_data.dcache.linesz) {
   unsigned long data;

   data = __raw_readl(addr) & (0x1ffffC00 | SH_CACHE_VALID);
          if (data == phys) {
    data &= ~(SH_CACHE_VALID | SH_CACHE_UPDATED);
    __raw_writel(data, addr);
   }
  }

  addrstart += current_cpu_data.dcache.way_incr;
 } while (--ways);

 back_to_cached();
 local_irq_restore(flags);
}
