
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flush_tlb_info {scalar_t__ mm; } ;
struct TYPE_2__ {int loaded_mm; } ;


 int NR_TLB_REMOTE_FLUSH_RECEIVED ;
 int TLB_REMOTE_SHOOTDOWN ;
 int count_vm_tlb_event (int ) ;
 TYPE_1__ cpu_tlbstate ;
 int flush_tlb_func_common (struct flush_tlb_info const*,int,int ) ;
 int inc_irq_stat (int ) ;
 int irq_tlb_count ;
 scalar_t__ this_cpu_read (int ) ;

__attribute__((used)) static void flush_tlb_func_remote(void *info)
{
 const struct flush_tlb_info *f = info;

 inc_irq_stat(irq_tlb_count);

 if (f->mm && f->mm != this_cpu_read(cpu_tlbstate.loaded_mm))
  return;

 count_vm_tlb_event(NR_TLB_REMOTE_FLUSH_RECEIVED);
 flush_tlb_func_common(f, 0, TLB_REMOTE_SHOOTDOWN);
}
