
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct pseudo_lock_region {unsigned long size; int thread_done; int lock_thread_wq; int kmem; } ;


 int MSR_MISC_FEATURE_CONTROL ;
 void* READ_ONCE (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int prefetch_disable_bits ;
 scalar_t__ rdtsc_ordered () ;
 int trace_pseudo_lock_mem_latency (int ) ;
 int wake_up_interruptible (int *) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static int measure_cycles_lat_fn(void *_plr)
{
 struct pseudo_lock_region *plr = _plr;
 unsigned long i;
 u64 start, end;
 void *mem_r;

 local_irq_disable();



 wrmsr(MSR_MISC_FEATURE_CONTROL, prefetch_disable_bits, 0x0);
 mem_r = READ_ONCE(plr->kmem);




 start = rdtsc_ordered();
 for (i = 0; i < plr->size; i += 32) {
  start = rdtsc_ordered();
  asm volatile("mov (%0,%1,1), %%eax\n\t"
        :
        : "r" (mem_r), "r" (i)
        : "%eax", "memory");
  end = rdtsc_ordered();
  trace_pseudo_lock_mem_latency((u32)(end - start));
 }
 wrmsr(MSR_MISC_FEATURE_CONTROL, 0x0, 0x0);
 local_irq_enable();
 plr->thread_done = 1;
 wake_up_interruptible(&plr->lock_thread_wq);
 return 0;
}
