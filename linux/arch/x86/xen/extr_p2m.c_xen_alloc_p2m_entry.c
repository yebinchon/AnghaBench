
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long* pte_t ;
struct TYPE_3__ {unsigned long max_pfn; int p2m_generation; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 TYPE_2__* HYPERVISOR_shared_info ;
 unsigned long MAX_P2M_PFN ;
 int P2M_PER_PAGE ;
 int PAGE_KERNEL ;
 int PAGE_SIZE ;
 unsigned long PFN_DOWN (int ) ;
 unsigned int PG_LEVEL_4K ;
 unsigned long* READ_ONCE (unsigned long*) ;
 int __pa (unsigned long*) ;
 unsigned long* alloc_p2m_page () ;
 unsigned long** alloc_p2m_pmd (unsigned long,unsigned long**) ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int free_p2m_page (unsigned long*) ;
 unsigned long** lookup_address (unsigned long,unsigned int*) ;
 unsigned long* mfn_to_virt (unsigned long) ;
 unsigned long* p2m_identity ;
 unsigned long** p2m_identity_pte ;
 int p2m_init (unsigned long*) ;
 int p2m_init_identity (unsigned long*,unsigned long) ;
 size_t p2m_mid_index (unsigned long) ;
 int p2m_mid_mfn_init (unsigned long*,unsigned long*) ;
 unsigned long* p2m_mid_missing_mfn ;
 unsigned long* p2m_missing ;
 unsigned long** p2m_missing_pte ;
 unsigned int p2m_top_index (unsigned long) ;
 unsigned long* p2m_top_mfn ;
 unsigned long** p2m_top_mfn_p ;
 int p2m_update_lock ;
 int pfn_pte (unsigned long,int ) ;
 unsigned long pte_pfn (unsigned long*) ;
 int set_pte (unsigned long**,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long virt_to_mfn (unsigned long*) ;
 int wmb () ;
 scalar_t__ xen_p2m_addr ;
 unsigned long xen_p2m_last_pfn ;

int xen_alloc_p2m_entry(unsigned long pfn)
{
 unsigned topidx;
 unsigned long *top_mfn_p, *mid_mfn;
 pte_t *ptep, *pte_pg;
 unsigned int level;
 unsigned long flags;
 unsigned long addr = (unsigned long)(xen_p2m_addr + pfn);
 unsigned long p2m_pfn;

 ptep = lookup_address(addr, &level);
 BUG_ON(!ptep || level != PG_LEVEL_4K);
 pte_pg = (pte_t *)((unsigned long)ptep & ~(PAGE_SIZE - 1));

 if (pte_pg == p2m_missing_pte || pte_pg == p2m_identity_pte) {

  ptep = alloc_p2m_pmd(addr, pte_pg);
  if (!ptep)
   return -ENOMEM;
 }

 if (p2m_top_mfn && pfn < MAX_P2M_PFN) {
  topidx = p2m_top_index(pfn);
  top_mfn_p = &p2m_top_mfn[topidx];
  mid_mfn = READ_ONCE(p2m_top_mfn_p[topidx]);

  BUG_ON(virt_to_mfn(mid_mfn) != *top_mfn_p);

  if (mid_mfn == p2m_mid_missing_mfn) {

   unsigned long missing_mfn;
   unsigned long mid_mfn_mfn;
   unsigned long old_mfn;

   mid_mfn = alloc_p2m_page();
   if (!mid_mfn)
    return -ENOMEM;

   p2m_mid_mfn_init(mid_mfn, p2m_missing);

   missing_mfn = virt_to_mfn(p2m_mid_missing_mfn);
   mid_mfn_mfn = virt_to_mfn(mid_mfn);
   old_mfn = cmpxchg(top_mfn_p, missing_mfn, mid_mfn_mfn);
   if (old_mfn != missing_mfn) {
    free_p2m_page(mid_mfn);
    mid_mfn = mfn_to_virt(old_mfn);
   } else {
    p2m_top_mfn_p[topidx] = mid_mfn;
   }
  }
 } else {
  mid_mfn = ((void*)0);
 }

 p2m_pfn = pte_pfn(READ_ONCE(*ptep));
 if (p2m_pfn == PFN_DOWN(__pa(p2m_identity)) ||
     p2m_pfn == PFN_DOWN(__pa(p2m_missing))) {

  unsigned long *p2m;

  p2m = alloc_p2m_page();
  if (!p2m)
   return -ENOMEM;

  if (p2m_pfn == PFN_DOWN(__pa(p2m_missing)))
   p2m_init(p2m);
  else
   p2m_init_identity(p2m, pfn & ~(P2M_PER_PAGE - 1));

  spin_lock_irqsave(&p2m_update_lock, flags);

  if (pte_pfn(*ptep) == p2m_pfn) {
   HYPERVISOR_shared_info->arch.p2m_generation++;
   wmb();
   set_pte(ptep,
    pfn_pte(PFN_DOWN(__pa(p2m)), PAGE_KERNEL));
   wmb();
   HYPERVISOR_shared_info->arch.p2m_generation++;
   if (mid_mfn)
    mid_mfn[p2m_mid_index(pfn)] = virt_to_mfn(p2m);
   p2m = ((void*)0);
  }

  spin_unlock_irqrestore(&p2m_update_lock, flags);

  if (p2m)
   free_p2m_page(p2m);
 }


 if (pfn > xen_p2m_last_pfn) {
  xen_p2m_last_pfn = pfn;
  HYPERVISOR_shared_info->arch.max_pfn = xen_p2m_last_pfn;
 }

 return 0;
}
