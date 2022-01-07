
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tlb_batch {int hugepage_shift; struct mm_struct* mm; } ;
struct TYPE_4__ {int lock; TYPE_1__* tsb_block; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_3__ {unsigned long tsb_nentries; scalar_t__ tsb; } ;


 size_t MM_TSB_BASE ;
 size_t MM_TSB_HUGE ;
 int PAGE_SHIFT ;
 int REAL_HPAGE_SHIFT ;
 int __flush_huge_tsb_one (struct tlb_batch*,int ,unsigned long,unsigned long,int ) ;
 int __flush_tsb_one (struct tlb_batch*,int ,unsigned long,unsigned long) ;
 unsigned long __pa (unsigned long) ;
 scalar_t__ cheetah_plus ;
 scalar_t__ hypervisor ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tlb_type ;

void flush_tsb_user(struct tlb_batch *tb)
{
 struct mm_struct *mm = tb->mm;
 unsigned long nentries, base, flags;

 spin_lock_irqsave(&mm->context.lock, flags);

 if (tb->hugepage_shift < REAL_HPAGE_SHIFT) {
  base = (unsigned long) mm->context.tsb_block[MM_TSB_BASE].tsb;
  nentries = mm->context.tsb_block[MM_TSB_BASE].tsb_nentries;
  if (tlb_type == cheetah_plus || tlb_type == hypervisor)
   base = __pa(base);
  if (tb->hugepage_shift == PAGE_SHIFT)
   __flush_tsb_one(tb, PAGE_SHIFT, base, nentries);





 }
 spin_unlock_irqrestore(&mm->context.lock, flags);
}
