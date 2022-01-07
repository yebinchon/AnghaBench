
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_2__* vm_mm; } ;
struct TYPE_3__ {unsigned long id; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int NDS32_SR_TLB_MISC ;
 scalar_t__ PAGE_SIZE ;
 unsigned long TLB_MISC_mskCID ;
 int __nds32__isb () ;
 unsigned long __nds32__mfsr (int ) ;
 int __nds32__mtsr_dsb (unsigned long,int ) ;
 int __nds32__tlbop_flua () ;
 int __nds32__tlbop_inv (unsigned long) ;
 int cid_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void local_flush_tlb_range(struct vm_area_struct *vma,
      unsigned long start, unsigned long end)
{
 unsigned long flags, ocid, ncid;

 if ((end - start) > 0x400000) {
  __nds32__tlbop_flua();
  __nds32__isb();
  return;
 }

 spin_lock_irqsave(&cid_lock, flags);
 ocid = __nds32__mfsr(NDS32_SR_TLB_MISC);
 ncid = (ocid & ~TLB_MISC_mskCID) | vma->vm_mm->context.id;
 __nds32__mtsr_dsb(ncid, NDS32_SR_TLB_MISC);
 while (start < end) {
  __nds32__tlbop_inv(start);
  __nds32__isb();
  start += PAGE_SIZE;
 }
 __nds32__mtsr_dsb(ocid, NDS32_SR_TLB_MISC);
 spin_unlock_irqrestore(&cid_lock, flags);
}
