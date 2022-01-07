
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_tlb_info {scalar_t__ end; scalar_t__ start; scalar_t__ freed_tables; } ;
struct cpumask {int dummy; } ;


 int GFP_ATOMIC ;
 int NR_TLB_REMOTE_FLUSH ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ TLB_FLUSH_ALL ;
 int TLB_REMOTE_SEND_IPI ;
 int count_vm_tlb_event (int ) ;
 int flush_tlb_func_remote ;
 scalar_t__ is_uv_system () ;
 int on_each_cpu_cond_mask (int ,int ,void*,int,int ,struct cpumask const*) ;
 int smp_call_function_many (struct cpumask const*,int ,void*,int) ;
 int tlb_is_not_lazy ;
 int trace_tlb_flush (int ,scalar_t__) ;
 struct cpumask* uv_flush_tlb_others (struct cpumask const*,struct flush_tlb_info const*) ;

void native_flush_tlb_others(const struct cpumask *cpumask,
        const struct flush_tlb_info *info)
{
 count_vm_tlb_event(NR_TLB_REMOTE_FLUSH);
 if (info->end == TLB_FLUSH_ALL)
  trace_tlb_flush(TLB_REMOTE_SEND_IPI, TLB_FLUSH_ALL);
 else
  trace_tlb_flush(TLB_REMOTE_SEND_IPI,
    (info->end - info->start) >> PAGE_SHIFT);

 if (is_uv_system()) {
  cpumask = uv_flush_tlb_others(cpumask, info);
  if (cpumask)
   smp_call_function_many(cpumask, flush_tlb_func_remote,
            (void *)info, 1);
  return;
 }
 if (info->freed_tables)
  smp_call_function_many(cpumask, flush_tlb_func_remote,
          (void *)info, 1);
 else
  on_each_cpu_cond_mask(tlb_is_not_lazy, flush_tlb_func_remote,
    (void *)info, 1, GFP_ATOMIC, cpumask);
}
