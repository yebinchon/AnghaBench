
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int real_pte_t ;
typedef int pte_t ;
struct TYPE_4__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,size_t,size_t,int,unsigned long) ;unsigned long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int ,size_t,size_t,int) ;int (* hpte_remove ) (unsigned long) ;} ;
struct TYPE_3__ {unsigned long shift; } ;


 int CPU_FTR_COHERENT_ICACHE ;
 int CPU_FTR_NOEXECUTE ;
 unsigned long HPTES_PER_GROUP ;
 int HPTE_V_SECONDARY ;
 unsigned long H_PAGE_BUSY ;
 unsigned long H_PAGE_HASHPTE ;
 int MMU_FTR_CI_LARGE_PAGE ;
 size_t MMU_PAGE_64K ;
 unsigned long PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 int READ_ONCE (int ) ;
 unsigned long _PAGE_ACCESSED ;
 unsigned long _PAGE_DIRTY ;
 unsigned long _PAGE_HPTEFLAGS ;
 unsigned long _PAGE_WRITE ;
 int __pte (unsigned long) ;
 int __real_pte (int ,int *,int ) ;
 int check_pte_access (unsigned long,unsigned long) ;
 scalar_t__ cpu_has_feature (int ) ;
 int hash_failure_debug (unsigned long,unsigned long,unsigned long,unsigned long,int,size_t,size_t,unsigned long) ;
 unsigned long hash_page_do_lazy_icache (unsigned long,int ,unsigned long) ;
 unsigned long hpt_hash (unsigned long,unsigned long,int) ;
 unsigned long hpt_vpn (unsigned long,unsigned long,int) ;
 unsigned long htab_convert_pte_flags (unsigned long) ;
 unsigned long htab_hash_mask ;
 scalar_t__ likely (int) ;
 int mftb () ;
 int mmu_has_feature (int ) ;
 TYPE_2__ mmu_hash_ops ;
 TYPE_1__* mmu_psize_defs ;
 int pte_ci (int ) ;
 unsigned long pte_get_hash_gslot (unsigned long,unsigned long,int,int ,int ) ;
 unsigned long pte_pfn (int ) ;
 unsigned long pte_set_hidx (int *,int ,int ,unsigned long,int ) ;
 unsigned long pte_val (int ) ;
 int pte_xchg (int *,int ,int ) ;
 int stub1 (unsigned long,unsigned long,unsigned long,size_t,size_t,int,unsigned long) ;
 unsigned long stub2 (unsigned long,unsigned long,unsigned long,unsigned long,int ,size_t,size_t,int) ;
 unsigned long stub3 (unsigned long,unsigned long,unsigned long,unsigned long,int ,size_t,size_t,int) ;
 int stub4 (unsigned long) ;
 scalar_t__ unlikely (int) ;

int __hash_page_64K(unsigned long ea, unsigned long access,
      unsigned long vsid, pte_t *ptep, unsigned long trap,
      unsigned long flags, int ssize)
{
 real_pte_t rpte;
 unsigned long hpte_group;
 unsigned long rflags, pa;
 unsigned long old_pte, new_pte;
 unsigned long vpn, hash, slot;
 unsigned long shift = mmu_psize_defs[MMU_PAGE_64K].shift;




 do {
  pte_t pte = READ_ONCE(*ptep);

  old_pte = pte_val(pte);

  if (unlikely(old_pte & H_PAGE_BUSY))
   return 0;

  if (unlikely(!check_pte_access(access, old_pte)))
   return 1;




  if (!mmu_has_feature(MMU_FTR_CI_LARGE_PAGE) &&
      unlikely(pte_ci(pte)))
   return 0;




  new_pte = old_pte | H_PAGE_BUSY | _PAGE_ACCESSED;
  if (access & _PAGE_WRITE)
   new_pte |= _PAGE_DIRTY;
 } while (!pte_xchg(ptep, __pte(old_pte), __pte(new_pte)));

 rflags = htab_convert_pte_flags(new_pte);
 rpte = __real_pte(__pte(old_pte), ptep, PTRS_PER_PTE);

 if (cpu_has_feature(CPU_FTR_NOEXECUTE) &&
     !cpu_has_feature(CPU_FTR_COHERENT_ICACHE))
  rflags = hash_page_do_lazy_icache(rflags, __pte(old_pte), trap);

 vpn = hpt_vpn(ea, vsid, ssize);
 if (unlikely(old_pte & H_PAGE_HASHPTE)) {
  unsigned long gslot;




  gslot = pte_get_hash_gslot(vpn, shift, ssize, rpte, 0);
  if (mmu_hash_ops.hpte_updatepp(gslot, rflags, vpn, MMU_PAGE_64K,
            MMU_PAGE_64K, ssize,
            flags) == -1)
   old_pte &= ~_PAGE_HPTEFLAGS;
 }

 if (likely(!(old_pte & H_PAGE_HASHPTE))) {

  pa = pte_pfn(__pte(old_pte)) << PAGE_SHIFT;
  hash = hpt_hash(vpn, shift, ssize);

repeat:
  hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;


  slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags, 0,
      MMU_PAGE_64K, MMU_PAGE_64K,
      ssize);



  if (unlikely(slot == -1)) {
   hpte_group = (~hash & htab_hash_mask) * HPTES_PER_GROUP;
   slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa,
       rflags,
       HPTE_V_SECONDARY,
       MMU_PAGE_64K,
       MMU_PAGE_64K, ssize);
   if (slot == -1) {
    if (mftb() & 0x1)
     hpte_group = (hash & htab_hash_mask) *
       HPTES_PER_GROUP;
    mmu_hash_ops.hpte_remove(hpte_group);



    goto repeat;
   }
  }




  if (unlikely(slot == -2)) {
   *ptep = __pte(old_pte);
   hash_failure_debug(ea, access, vsid, trap, ssize,
        MMU_PAGE_64K, MMU_PAGE_64K, old_pte);
   return -1;
  }

  new_pte = (new_pte & ~_PAGE_HPTEFLAGS) | H_PAGE_HASHPTE;
  new_pte |= pte_set_hidx(ptep, rpte, 0, slot, PTRS_PER_PTE);
 }
 *ptep = __pte(new_pte & ~H_PAGE_BUSY);
 return 0;
}
