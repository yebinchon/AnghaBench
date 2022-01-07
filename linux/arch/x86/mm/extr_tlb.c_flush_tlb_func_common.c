
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct TYPE_4__ {scalar_t__ ctx_id; int tlb_gen; } ;
struct mm_struct {TYPE_1__ context; } ;
struct flush_tlb_info {scalar_t__ new_tlb_gen; unsigned long end; unsigned long start; unsigned long stride_shift; } ;
typedef enum tlb_flush_reason { ____Placeholder_tlb_flush_reason } tlb_flush_reason ;
struct TYPE_6__ {TYPE_2__* ctxs; int is_lazy; int loaded_mm_asid; int loaded_mm; } ;
struct TYPE_5__ {int tlb_gen; int ctx_id; } ;


 int NR_TLB_LOCAL_FLUSH_ALL ;
 int NR_TLB_LOCAL_FLUSH_ONE ;
 unsigned long TLB_FLUSH_ALL ;
 int VM_WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int __flush_tlb_one_user (unsigned long) ;
 scalar_t__ atomic64_read (int *) ;
 int count_vm_tlb_event (int ) ;
 int count_vm_tlb_events (int ,unsigned long) ;
 TYPE_3__ cpu_tlbstate ;
 struct mm_struct init_mm ;
 int irqs_disabled () ;
 int local_flush_tlb () ;
 int switch_mm_irqs_off (int *,struct mm_struct*,int *) ;
 scalar_t__ this_cpu_read (int ) ;
 int this_cpu_write (int ,scalar_t__) ;
 int trace_tlb_flush (int,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void flush_tlb_func_common(const struct flush_tlb_info *f,
      bool local, enum tlb_flush_reason reason)
{
 struct mm_struct *loaded_mm = this_cpu_read(cpu_tlbstate.loaded_mm);
 u32 loaded_mm_asid = this_cpu_read(cpu_tlbstate.loaded_mm_asid);
 u64 mm_tlb_gen = atomic64_read(&loaded_mm->context.tlb_gen);
 u64 local_tlb_gen = this_cpu_read(cpu_tlbstate.ctxs[loaded_mm_asid].tlb_gen);


 VM_WARN_ON(!irqs_disabled());

 if (unlikely(loaded_mm == &init_mm))
  return;

 VM_WARN_ON(this_cpu_read(cpu_tlbstate.ctxs[loaded_mm_asid].ctx_id) !=
     loaded_mm->context.ctx_id);

 if (this_cpu_read(cpu_tlbstate.is_lazy)) {
  switch_mm_irqs_off(((void*)0), &init_mm, ((void*)0));
  return;
 }

 if (unlikely(local_tlb_gen == mm_tlb_gen)) {






  trace_tlb_flush(reason, 0);
  return;
 }

 WARN_ON_ONCE(local_tlb_gen > mm_tlb_gen);
 WARN_ON_ONCE(f->new_tlb_gen > mm_tlb_gen);
 if (f->end != TLB_FLUSH_ALL &&
     f->new_tlb_gen == local_tlb_gen + 1 &&
     f->new_tlb_gen == mm_tlb_gen) {

  unsigned long nr_invalidate = (f->end - f->start) >> f->stride_shift;
  unsigned long addr = f->start;

  while (addr < f->end) {
   __flush_tlb_one_user(addr);
   addr += 1UL << f->stride_shift;
  }
  if (local)
   count_vm_tlb_events(NR_TLB_LOCAL_FLUSH_ONE, nr_invalidate);
  trace_tlb_flush(reason, nr_invalidate);
 } else {

  local_flush_tlb();
  if (local)
   count_vm_tlb_event(NR_TLB_LOCAL_FLUSH_ALL);
  trace_tlb_flush(reason, TLB_FLUSH_ALL);
 }


 this_cpu_write(cpu_tlbstate.ctxs[loaded_mm_asid].tlb_gen, mm_tlb_gen);
}
