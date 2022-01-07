
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int hidx; } ;
typedef TYPE_1__ real_pte_t ;
typedef int pte_t ;
struct TYPE_11__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,size_t,size_t,int,unsigned long) ;unsigned long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int ,size_t,size_t,int) ;int (* hpte_remove ) (unsigned long) ;int (* hpte_invalidate ) (unsigned long,unsigned long,size_t,size_t,int,int ) ;} ;
struct TYPE_10__ {unsigned long shift; } ;


 int CPU_FTR_COHERENT_ICACHE ;
 int CPU_FTR_NOEXECUTE ;
 unsigned long HPTES_PER_GROUP ;
 int HPTE_V_SECONDARY ;
 unsigned long HW_PAGE_SHIFT ;
 unsigned long H_PAGE_4K_PFN ;
 unsigned long H_PAGE_BUSY ;
 unsigned long H_PAGE_COMBO ;
 unsigned long H_PAGE_HASHPTE ;
 int INVALID_RPTE_HIDX ;
 size_t MMU_PAGE_4K ;
 int MMU_PAGE_64K ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTRS_PER_PTE ;
 int READ_ONCE (int ) ;
 unsigned long _PAGE_ACCESSED ;
 unsigned long _PAGE_DIRTY ;
 unsigned long _PAGE_WRITE ;
 unsigned long _PTEIDX_GROUP_IX ;
 int __pte (unsigned long) ;
 TYPE_1__ __real_pte (int ,int *,int ) ;
 scalar_t__ __rpte_sub_valid (TYPE_1__,unsigned int) ;
 int check_pte_access (unsigned long,unsigned long) ;
 scalar_t__ cpu_has_feature (int ) ;
 int flush_hash_page (unsigned long,TYPE_1__,int ,int,unsigned long) ;
 int hash_failure_debug (unsigned long,unsigned long,unsigned long,unsigned long,int,size_t,size_t,unsigned long) ;
 unsigned long hash_page_do_lazy_icache (unsigned long,int ,unsigned long) ;
 unsigned long hpt_hash (unsigned long,unsigned long,int) ;
 unsigned long hpt_vpn (unsigned long,unsigned long,int) ;
 int hpte_soft_invalid (unsigned long) ;
 unsigned long htab_convert_pte_flags (unsigned long) ;
 unsigned long htab_hash_mask ;
 int mftb () ;
 TYPE_5__ mmu_hash_ops ;
 TYPE_4__* mmu_psize_defs ;
 unsigned long pte_get_hash_gslot (unsigned long,unsigned long,int,TYPE_1__,unsigned int) ;
 unsigned long pte_pfn (int ) ;
 unsigned long pte_set_hidx (int *,TYPE_1__,unsigned int,unsigned long,int ) ;
 unsigned long pte_val (int ) ;
 int pte_xchg (int *,int ,int ) ;
 int stub1 (unsigned long,unsigned long,unsigned long,size_t,size_t,int,unsigned long) ;
 unsigned long stub2 (unsigned long,unsigned long,unsigned long,unsigned long,int ,size_t,size_t,int) ;
 unsigned long stub3 (unsigned long,unsigned long,unsigned long,unsigned long,int ,size_t,size_t,int) ;
 int stub4 (unsigned long,unsigned long,size_t,size_t,int,int ) ;
 int stub5 (unsigned long) ;
 scalar_t__ unlikely (int) ;

int __hash_page_4K(unsigned long ea, unsigned long access, unsigned long vsid,
     pte_t *ptep, unsigned long trap, unsigned long flags,
     int ssize, int subpg_prot)
{
 real_pte_t rpte;
 unsigned long hpte_group;
 unsigned int subpg_index;
 unsigned long rflags, pa;
 unsigned long old_pte, new_pte, subpg_pte;
 unsigned long vpn, hash, slot, gslot;
 unsigned long shift = mmu_psize_defs[MMU_PAGE_4K].shift;




 do {
  pte_t pte = READ_ONCE(*ptep);

  old_pte = pte_val(pte);

  if (unlikely(old_pte & H_PAGE_BUSY))
   return 0;

  if (unlikely(!check_pte_access(access, old_pte)))
   return 1;





  new_pte = old_pte | H_PAGE_BUSY | _PAGE_ACCESSED | H_PAGE_COMBO;
  if (access & _PAGE_WRITE)
   new_pte |= _PAGE_DIRTY;
 } while (!pte_xchg(ptep, __pte(old_pte), __pte(new_pte)));




 subpg_pte = new_pte & ~subpg_prot;
 rflags = htab_convert_pte_flags(subpg_pte);

 if (cpu_has_feature(CPU_FTR_NOEXECUTE) &&
     !cpu_has_feature(CPU_FTR_COHERENT_ICACHE)) {





  rflags = hash_page_do_lazy_icache(rflags, __pte(old_pte), trap);
 }

 subpg_index = (ea & (PAGE_SIZE - 1)) >> shift;
 vpn = hpt_vpn(ea, vsid, ssize);
 rpte = __real_pte(__pte(old_pte), ptep, PTRS_PER_PTE);



 if (!(old_pte & H_PAGE_HASHPTE))
  goto htab_insert_hpte;




 if (!(old_pte & H_PAGE_COMBO)) {
  flush_hash_page(vpn, rpte, MMU_PAGE_64K, ssize, flags);





  old_pte &= ~H_PAGE_HASHPTE;
  new_pte &= ~H_PAGE_HASHPTE;
  goto htab_insert_hpte;
 }



 if (__rpte_sub_valid(rpte, subpg_index)) {
  int ret;

  gslot = pte_get_hash_gslot(vpn, shift, ssize, rpte,
        subpg_index);
  ret = mmu_hash_ops.hpte_updatepp(gslot, rflags, vpn,
       MMU_PAGE_4K, MMU_PAGE_4K,
       ssize, flags);





  if (ret == -1)
   goto htab_insert_hpte;

  *ptep = __pte(new_pte & ~H_PAGE_BUSY);
  return 0;
 }

htab_insert_hpte:





 if (!(old_pte & H_PAGE_COMBO))
  rpte.hidx = INVALID_RPTE_HIDX;




 if (old_pte & H_PAGE_4K_PFN) {




  pa = pte_pfn(__pte(old_pte)) << HW_PAGE_SHIFT;
 } else {
  pa = pte_pfn(__pte(old_pte)) << PAGE_SHIFT;
  pa += (subpg_index << shift);
 }
 hash = hpt_hash(vpn, shift, ssize);
repeat:
 hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;


 slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags, 0,
     MMU_PAGE_4K, MMU_PAGE_4K, ssize);



 if (unlikely(slot == -1)) {
  bool soft_invalid;

  hpte_group = (~hash & htab_hash_mask) * HPTES_PER_GROUP;
  slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa,
      rflags, HPTE_V_SECONDARY,
      MMU_PAGE_4K, MMU_PAGE_4K,
      ssize);

  soft_invalid = hpte_soft_invalid(slot);
  if (unlikely(soft_invalid)) {






   gslot = slot & _PTEIDX_GROUP_IX;
   mmu_hash_ops.hpte_invalidate(hpte_group + gslot, vpn,
           MMU_PAGE_4K, MMU_PAGE_4K,
           ssize, 0);
  }

  if (unlikely(slot == -1 || soft_invalid)) {






   if (soft_invalid || (mftb() & 0x1))
    hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;

   mmu_hash_ops.hpte_remove(hpte_group);



   goto repeat;
  }
 }




 if (unlikely(slot == -2)) {
  *ptep = __pte(old_pte);
  hash_failure_debug(ea, access, vsid, trap, ssize,
       MMU_PAGE_4K, MMU_PAGE_4K, old_pte);
  return -1;
 }

 new_pte |= pte_set_hidx(ptep, rpte, subpg_index, slot, PTRS_PER_PTE);
 new_pte |= H_PAGE_HASHPTE;

 *ptep = __pte(new_pte & ~H_PAGE_BUSY);
 return 0;
}
