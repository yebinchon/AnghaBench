
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long id; } ;
struct mm_struct {int pgd; TYPE_1__ context; } ;


 int NDS32_SR_L1_PPTB ;
 int NDS32_SR_TLB_MISC ;
 unsigned long TLB_MISC_mskCID ;
 unsigned long __nds32__mfsr (int ) ;
 int __nds32__mtsr_dsb (unsigned long,int ) ;
 int __nds32__mtsr_isb (int ,int ) ;
 int __pa (int ) ;

void cpu_switch_mm(struct mm_struct *mm)
{
 unsigned long cid;
 cid = __nds32__mfsr(NDS32_SR_TLB_MISC);
 cid = (cid & ~TLB_MISC_mskCID) | mm->context.id;
 __nds32__mtsr_dsb(cid, NDS32_SR_TLB_MISC);
 __nds32__mtsr_isb(__pa(mm->pgd), NDS32_SR_L1_PPTB);
}
