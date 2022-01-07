
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ways; int way_size; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 unsigned long CACHE_OC_ADDRESS_ARRAY ;
 int L1_CACHE_BYTES ;
 unsigned long MAX_OCACHE_PAGES ;
 unsigned long PAGE_SHIFT ;
 unsigned long SH_CACHE_UPDATED ;
 unsigned long __raw_readl (unsigned long) ;
 int __raw_writel (unsigned long,unsigned long) ;
 int back_to_cached () ;
 TYPE_2__ current_cpu_data ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sh2a_flush_oc_line (unsigned long,int) ;

__attribute__((used)) static void sh2a__flush_wback_region(void *start, int size)
{
}
