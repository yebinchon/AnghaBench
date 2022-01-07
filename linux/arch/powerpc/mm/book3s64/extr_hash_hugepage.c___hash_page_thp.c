
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pmd_t ;
struct TYPE_4__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,unsigned int,int,int,unsigned long) ;unsigned long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int ,unsigned int,int,int) ;int (* hpte_remove ) (unsigned long) ;} ;
struct TYPE_3__ {unsigned long shift; } ;


 int BUG_ON (int) ;
 int CPU_FTR_COHERENT_ICACHE ;
 unsigned long HPAGE_PMD_MASK ;
 unsigned long HPTES_PER_GROUP ;
 int HPTE_V_SECONDARY ;
 unsigned long H_PAGE_BUSY ;
 unsigned long H_PAGE_COMBO ;
 unsigned long H_PAGE_HASHPTE ;
 unsigned long H_PAGE_THP_HUGE ;
 int MMU_PAGE_16M ;
 unsigned int MMU_PAGE_4K ;
 int MMU_PAGE_64K ;
 unsigned long PAGE_SHIFT ;
 unsigned int PTE_FRAG_SIZE ;
 int READ_ONCE (int ) ;
 unsigned long _PAGE_ACCESSED ;
 unsigned long _PAGE_DEVMAP ;
 unsigned long _PAGE_DIRTY ;
 unsigned long _PAGE_WRITE ;
 unsigned long _PTEIDX_GROUP_IX ;
 unsigned long _PTEIDX_SECONDARY ;
 int __pmd (unsigned long) ;
 int __pte (int ) ;
 int check_pte_access (unsigned long,unsigned long) ;
 int cpu_has_feature (int ) ;
 int flush_hash_hugepage (unsigned long,unsigned long,int *,int ,int,unsigned long) ;
 unsigned char* get_hpte_slot_array (int *) ;
 int hash_failure_debug (unsigned long,unsigned long,unsigned long,unsigned long,int,unsigned int,int,unsigned long) ;
 unsigned long hash_page_do_lazy_icache (unsigned long,int ,unsigned long) ;
 unsigned long hpt_hash (unsigned long,unsigned long,int) ;
 unsigned long hpt_vpn (unsigned long,unsigned long,int) ;
 unsigned long hpte_hash_index (unsigned char*,unsigned int) ;
 unsigned int hpte_valid (unsigned char*,unsigned int) ;
 unsigned long htab_convert_pte_flags (unsigned long) ;
 unsigned long htab_hash_mask ;
 int mark_hpte_slot_valid (unsigned char*,unsigned int,unsigned long) ;
 int memset (unsigned char*,int ,unsigned int) ;
 int mftb () ;
 TYPE_2__ mmu_hash_ops ;
 TYPE_1__* mmu_psize_defs ;
 int old_pte ;
 unsigned long pmd_pfn (int ) ;
 unsigned long pmd_val (int ) ;
 int pmd_xchg (int *,int ,int ) ;
 int smp_wmb () ;
 int stub1 (unsigned long,unsigned long,unsigned long,unsigned int,int,int,unsigned long) ;
 unsigned long stub2 (unsigned long,unsigned long,unsigned long,unsigned long,int ,unsigned int,int,int) ;
 unsigned long stub3 (unsigned long,unsigned long,unsigned long,unsigned long,int ,unsigned int,int,int) ;
 int stub4 (unsigned long) ;
 scalar_t__ unlikely (int) ;

int __hash_page_thp(unsigned long ea, unsigned long access, unsigned long vsid,
      pmd_t *pmdp, unsigned long trap, unsigned long flags,
      int ssize, unsigned int psize)
{
 unsigned int index, valid;
 unsigned char *hpte_slot_array;
 unsigned long rflags, pa, hidx;
 unsigned long old_pmd, new_pmd;
 int ret, lpsize = MMU_PAGE_16M;
 unsigned long vpn, hash, shift, slot;




 do {
  pmd_t pmd = READ_ONCE(*pmdp);

  old_pmd = pmd_val(pmd);

  if (unlikely(old_pmd & H_PAGE_BUSY))
   return 0;

  if (unlikely(!check_pte_access(access, old_pmd)))
   return 1;




  new_pmd = old_pmd | H_PAGE_BUSY | _PAGE_ACCESSED;
  if (access & _PAGE_WRITE)
   new_pmd |= _PAGE_DIRTY;
 } while (!pmd_xchg(pmdp, __pmd(old_pmd), __pmd(new_pmd)));




 if (!(old_pmd & (H_PAGE_THP_HUGE | _PAGE_DEVMAP)))
  return 0;

 rflags = htab_convert_pte_flags(new_pmd);
 shift = mmu_psize_defs[psize].shift;
 index = (ea & ~HPAGE_PMD_MASK) >> shift;
 BUG_ON(index >= PTE_FRAG_SIZE);

 vpn = hpt_vpn(ea, vsid, ssize);
 hpte_slot_array = get_hpte_slot_array(pmdp);
 if (psize == MMU_PAGE_4K) {





  if ((old_pmd & H_PAGE_HASHPTE) && !(old_pmd & H_PAGE_COMBO)) {
   flush_hash_hugepage(vsid, ea, pmdp, MMU_PAGE_64K,
         ssize, flags);
   memset(hpte_slot_array, 0, PTE_FRAG_SIZE);
  }
 }

 valid = hpte_valid(hpte_slot_array, index);
 if (valid) {

  hash = hpt_hash(vpn, shift, ssize);
  hidx = hpte_hash_index(hpte_slot_array, index);
  if (hidx & _PTEIDX_SECONDARY)
   hash = ~hash;
  slot = (hash & htab_hash_mask) * HPTES_PER_GROUP;
  slot += hidx & _PTEIDX_GROUP_IX;

  ret = mmu_hash_ops.hpte_updatepp(slot, rflags, vpn,
       psize, lpsize, ssize, flags);



  if (ret == -1) {





   valid = 0;
   hpte_slot_array[index] = 0;
  }
 }

 if (!valid) {
  unsigned long hpte_group;

  hash = hpt_hash(vpn, shift, ssize);

  pa = pmd_pfn(__pmd(old_pmd)) << PAGE_SHIFT;
  new_pmd |= H_PAGE_HASHPTE;

repeat:
  hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;


  slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags, 0,
      psize, lpsize, ssize);



  if (unlikely(slot == -1)) {
   hpte_group = (~hash & htab_hash_mask) * HPTES_PER_GROUP;
   slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa,
       rflags,
       HPTE_V_SECONDARY,
       psize, lpsize, ssize);
   if (slot == -1) {
    if (mftb() & 0x1)
     hpte_group = (hash & htab_hash_mask) *
       HPTES_PER_GROUP;

    mmu_hash_ops.hpte_remove(hpte_group);
    goto repeat;
   }
  }




  if (unlikely(slot == -2)) {
   *pmdp = __pmd(old_pmd);
   hash_failure_debug(ea, access, vsid, trap, ssize,
        psize, lpsize, old_pmd);
   return -1;
  }





  mark_hpte_slot_valid(hpte_slot_array, index, slot);
 }




 if (psize == MMU_PAGE_4K)
  new_pmd |= H_PAGE_COMBO;





 smp_wmb();
 *pmdp = __pmd(new_pmd & ~H_PAGE_BUSY);
 return 0;
}
