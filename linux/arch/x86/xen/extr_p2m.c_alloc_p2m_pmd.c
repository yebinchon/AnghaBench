
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pte_t ;
typedef int pmd_t ;
struct TYPE_3__ {int p2m_generation; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int BUG_ON (int) ;
 TYPE_2__* HYPERVISOR_shared_info ;
 int PAGE_SHIFT ;
 int PMDS_PER_MID_PAGE ;
 int PMD_SIZE ;
 int _KERNPG_TABLE ;
 int __pa (int *) ;
 int __pmd (int) ;
 int * alloc_p2m_page () ;
 int copy_page (int *,int *) ;
 int free_p2m_page (int *) ;
 int init_mm ;
 int * lookup_address (unsigned long,unsigned int*) ;
 int * lookup_pmd_address (unsigned long) ;
 int p2m_update_lock ;
 int paravirt_alloc_pte (int *,int) ;
 int paravirt_release_pte (int) ;
 int set_pmd (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

__attribute__((used)) static pte_t *alloc_p2m_pmd(unsigned long addr, pte_t *pte_pg)
{
 pte_t *ptechk;
 pte_t *pte_newpg[PMDS_PER_MID_PAGE];
 pmd_t *pmdp;
 unsigned int level;
 unsigned long flags;
 unsigned long vaddr;
 int i;


 for (i = 0; i < PMDS_PER_MID_PAGE; i++) {
  pte_newpg[i] = alloc_p2m_page();
  if (!pte_newpg[i]) {
   for (i--; i >= 0; i--)
    free_p2m_page(pte_newpg[i]);

   return ((void*)0);
  }
 }

 vaddr = addr & ~(PMD_SIZE * PMDS_PER_MID_PAGE - 1);

 for (i = 0; i < PMDS_PER_MID_PAGE; i++) {
  copy_page(pte_newpg[i], pte_pg);
  paravirt_alloc_pte(&init_mm, __pa(pte_newpg[i]) >> PAGE_SHIFT);

  pmdp = lookup_pmd_address(vaddr);
  BUG_ON(!pmdp);

  spin_lock_irqsave(&p2m_update_lock, flags);

  ptechk = lookup_address(vaddr, &level);
  if (ptechk == pte_pg) {
   HYPERVISOR_shared_info->arch.p2m_generation++;
   wmb();
   set_pmd(pmdp,
    __pmd(__pa(pte_newpg[i]) | _KERNPG_TABLE));
   wmb();
   HYPERVISOR_shared_info->arch.p2m_generation++;
   pte_newpg[i] = ((void*)0);
  }

  spin_unlock_irqrestore(&p2m_update_lock, flags);

  if (pte_newpg[i]) {
   paravirt_release_pte(__pa(pte_newpg[i]) >> PAGE_SHIFT);
   free_p2m_page(pte_newpg[i]);
  }

  vaddr += PMD_SIZE;
 }

 return lookup_address(addr, &level);
}
