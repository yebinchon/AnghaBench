
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct flusher_data {unsigned long addr1; unsigned long addr2; } ;
struct TYPE_5__ {int n_aliases; } ;
struct TYPE_8__ {TYPE_1__ icache; } ;
struct TYPE_6__ {unsigned long entry_mask; int ways; scalar_t__ way_incr; } ;
struct TYPE_7__ {TYPE_2__ icache; } ;


 unsigned long CACHE_IC_ADDRESS_ARRAY ;
 int L1_CACHE_BYTES ;
 unsigned long MAX_ICACHE_PAGES ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __ocbwb (unsigned long) ;
 int __raw_writel (int ,unsigned long) ;
 int back_to_cached () ;
 TYPE_4__ boot_cpu_data ;
 TYPE_3__* cpu_data ;
 int jump_to_uncached () ;
 int local_flush_cache_all (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void sh4_flush_icache_range(void *args)
{
 struct flusher_data *data = args;
 unsigned long start, end;
 unsigned long flags, v;
 int i;

 start = data->addr1;
 end = data->addr2;


 if (((end - start) >> PAGE_SHIFT) >= MAX_ICACHE_PAGES) {
  local_flush_cache_all(((void*)0));
  return;
 }





 start &= ~(L1_CACHE_BYTES-1);
 end += L1_CACHE_BYTES-1;
 end &= ~(L1_CACHE_BYTES-1);

 local_irq_save(flags);
 jump_to_uncached();

 for (v = start; v < end; v += L1_CACHE_BYTES) {
  unsigned long icacheaddr;
  int j, n;

  __ocbwb(v);

  icacheaddr = CACHE_IC_ADDRESS_ARRAY | (v &
    cpu_data->icache.entry_mask);


  n = boot_cpu_data.icache.n_aliases;
  for (i = 0; i < cpu_data->icache.ways; i++) {
   for (j = 0; j < n; j++)
    __raw_writel(0, icacheaddr + (j * PAGE_SIZE));
   icacheaddr += cpu_data->icache.way_incr;
  }
 }

 back_to_cached();
 local_irq_restore(flags);
}
