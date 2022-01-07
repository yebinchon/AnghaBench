
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct residency_counts {void* hits_after; void* miss_after; void* hits_before; void* miss_before; } ;
struct pseudo_lock_region {int size; int kmem; int line_size; int cpu; } ;
struct perf_event_attr {int dummy; } ;
struct perf_event {int dummy; } ;


 scalar_t__ IS_ERR (struct perf_event*) ;
 int MSR_MISC_FEATURE_CONTROL ;
 void* READ_ONCE (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 struct perf_event* perf_event_create_kernel_counter (struct perf_event_attr*,int ,int *,int *,int *) ;
 scalar_t__ perf_event_read_local (struct perf_event*,void**,int *,int *) ;
 int perf_event_release_kernel (struct perf_event*) ;
 int prefetch_disable_bits ;
 int rdpmcl (int,void*) ;
 int rmb () ;
 int wrmsr (int ,int,int) ;
 int x86_perf_rdpmc_index (struct perf_event*) ;

__attribute__((used)) static int measure_residency_fn(struct perf_event_attr *miss_attr,
    struct perf_event_attr *hit_attr,
    struct pseudo_lock_region *plr,
    struct residency_counts *counts)
{
 u64 hits_before = 0, hits_after = 0, miss_before = 0, miss_after = 0;
 struct perf_event *miss_event, *hit_event;
 int hit_pmcnum, miss_pmcnum;
 unsigned int line_size;
 unsigned int size;
 unsigned long i;
 void *mem_r;
 u64 tmp;

 miss_event = perf_event_create_kernel_counter(miss_attr, plr->cpu,
            ((void*)0), ((void*)0), ((void*)0));
 if (IS_ERR(miss_event))
  goto out;

 hit_event = perf_event_create_kernel_counter(hit_attr, plr->cpu,
           ((void*)0), ((void*)0), ((void*)0));
 if (IS_ERR(hit_event))
  goto out_miss;

 local_irq_disable();




 if (perf_event_read_local(miss_event, &tmp, ((void*)0), ((void*)0))) {
  local_irq_enable();
  goto out_hit;
 }
 if (perf_event_read_local(hit_event, &tmp, ((void*)0), ((void*)0))) {
  local_irq_enable();
  goto out_hit;
 }




 wrmsr(MSR_MISC_FEATURE_CONTROL, prefetch_disable_bits, 0x0);






 miss_pmcnum = x86_perf_rdpmc_index(miss_event);
 hit_pmcnum = x86_perf_rdpmc_index(hit_event);
 line_size = READ_ONCE(plr->line_size);
 mem_r = READ_ONCE(plr->kmem);
 size = READ_ONCE(plr->size);






 rdpmcl(hit_pmcnum, hits_before);
 rdpmcl(miss_pmcnum, miss_before);






 rmb();
 rdpmcl(hit_pmcnum, hits_before);
 rdpmcl(miss_pmcnum, miss_before);




 rmb();
 for (i = 0; i < size; i += line_size) {




  rmb();
  asm volatile("mov (%0,%1,1), %%eax\n\t"
        :
        : "r" (mem_r), "r" (i)
        : "%eax", "memory");
 }




 rmb();
 rdpmcl(hit_pmcnum, hits_after);
 rdpmcl(miss_pmcnum, miss_after);




 rmb();

 wrmsr(MSR_MISC_FEATURE_CONTROL, 0x0, 0x0);
 local_irq_enable();
out_hit:
 perf_event_release_kernel(hit_event);
out_miss:
 perf_event_release_kernel(miss_event);
out:



 counts->miss_before = miss_before;
 counts->hits_before = hits_before;
 counts->miss_after = miss_after;
 counts->hits_after = hits_after;
 return 0;
}
