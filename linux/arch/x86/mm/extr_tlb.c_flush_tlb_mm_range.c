
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mm_struct {int dummy; } ;
struct flush_tlb_info {int dummy; } ;
struct TYPE_2__ {int loaded_mm; } ;


 unsigned long TLB_FLUSH_ALL ;
 int TLB_LOCAL_MM_SHOOTDOWN ;
 TYPE_1__ cpu_tlbstate ;
 scalar_t__ cpumask_any_but (int ,int) ;
 int flush_tlb_func_local (struct flush_tlb_info*,int ) ;
 int flush_tlb_others (int ,struct flush_tlb_info*) ;
 int get_cpu () ;
 struct flush_tlb_info* get_flush_tlb_info (struct mm_struct*,unsigned long,unsigned long,unsigned int,int,int ) ;
 int inc_mm_tlb_gen (struct mm_struct*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int lockdep_assert_irqs_enabled () ;
 int mm_cpumask (struct mm_struct*) ;
 scalar_t__ nr_cpu_ids ;
 int put_cpu () ;
 int put_flush_tlb_info () ;
 struct mm_struct* this_cpu_read (int ) ;
 unsigned long tlb_single_page_flush_ceiling ;

void flush_tlb_mm_range(struct mm_struct *mm, unsigned long start,
    unsigned long end, unsigned int stride_shift,
    bool freed_tables)
{
 struct flush_tlb_info *info;
 u64 new_tlb_gen;
 int cpu;

 cpu = get_cpu();


 if ((end == TLB_FLUSH_ALL) ||
     ((end - start) >> stride_shift) > tlb_single_page_flush_ceiling) {
  start = 0;
  end = TLB_FLUSH_ALL;
 }


 new_tlb_gen = inc_mm_tlb_gen(mm);

 info = get_flush_tlb_info(mm, start, end, stride_shift, freed_tables,
      new_tlb_gen);

 if (mm == this_cpu_read(cpu_tlbstate.loaded_mm)) {
  lockdep_assert_irqs_enabled();
  local_irq_disable();
  flush_tlb_func_local(info, TLB_LOCAL_MM_SHOOTDOWN);
  local_irq_enable();
 }

 if (cpumask_any_but(mm_cpumask(mm), cpu) < nr_cpu_ids)
  flush_tlb_others(mm_cpumask(mm), info);

 put_flush_tlb_info();
 put_cpu();
}
