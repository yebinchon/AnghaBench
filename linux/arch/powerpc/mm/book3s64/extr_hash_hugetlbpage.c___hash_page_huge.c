
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int real_pte_t ;
typedef int pte_t ;
struct TYPE_4__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,unsigned int,unsigned int,int,unsigned long) ;} ;
struct TYPE_3__ {unsigned int shift; } ;


 int BUG_ON (int) ;
 int CPU_FTR_COHERENT_ICACHE ;
 unsigned long H_PAGE_BUSY ;
 unsigned long H_PAGE_HASHPTE ;
 unsigned long H_PAGE_THP_HUGE ;
 unsigned int MMU_PAGE_16G ;
 unsigned long PAGE_SHIFT ;
 long PTRS_PER_PMD ;
 long PTRS_PER_PUD ;
 unsigned long _PAGE_ACCESSED ;
 unsigned long _PAGE_DEVMAP ;
 unsigned long _PAGE_DIRTY ;
 unsigned long _PAGE_HPTEFLAGS ;
 unsigned long _PAGE_WRITE ;
 int __pte (unsigned long) ;
 int __real_pte (int ,int *,long) ;
 int check_pte_access (unsigned long,unsigned long) ;
 int cpu_has_feature (int ) ;
 int hash_failure_debug (unsigned long,unsigned long,unsigned long,unsigned long,int,unsigned int,unsigned int,unsigned long) ;
 unsigned long hash_page_do_lazy_icache (unsigned long,int ,unsigned long) ;
 unsigned long hpt_hash (unsigned long,unsigned int,int) ;
 unsigned long hpt_vpn (unsigned long,unsigned long,int) ;
 long hpte_insert_repeating (unsigned long,unsigned long,unsigned long,unsigned long,int ,unsigned int,int) ;
 unsigned long htab_convert_pte_flags (unsigned long) ;
 scalar_t__ likely (int) ;
 TYPE_2__ mmu_hash_ops ;
 TYPE_1__* mmu_psize_defs ;
 unsigned long pte_get_hash_gslot (unsigned long,unsigned int,int,int ,int ) ;
 unsigned long pte_pfn (int ) ;
 unsigned long pte_set_hidx (int *,int ,int ,long,long) ;
 unsigned long pte_val (int ) ;
 int pte_xchg (int *,int ,int ) ;
 int stub1 (unsigned long,unsigned long,unsigned long,unsigned int,unsigned int,int,unsigned long) ;
 scalar_t__ unlikely (int) ;

int __hash_page_huge(unsigned long ea, unsigned long access, unsigned long vsid,
       pte_t *ptep, unsigned long trap, unsigned long flags,
       int ssize, unsigned int shift, unsigned int mmu_psize)
{
 real_pte_t rpte;
 unsigned long vpn;
 unsigned long old_pte, new_pte;
 unsigned long rflags, pa;
 long slot, offset;

 BUG_ON(shift != mmu_psize_defs[mmu_psize].shift);


 vpn = hpt_vpn(ea, vsid, ssize);
 do {
  old_pte = pte_val(*ptep);

  if (unlikely(old_pte & H_PAGE_BUSY))
   return 0;

  if (unlikely(!check_pte_access(access, old_pte)))
   return 1;





  new_pte = old_pte | H_PAGE_BUSY | _PAGE_ACCESSED;
  if (access & _PAGE_WRITE)
   new_pte |= _PAGE_DIRTY;
 } while(!pte_xchg(ptep, __pte(old_pte), __pte(new_pte)));


 if (old_pte & (H_PAGE_THP_HUGE | _PAGE_DEVMAP))
  return 0;

 rflags = htab_convert_pte_flags(new_pte);
 if (unlikely(mmu_psize == MMU_PAGE_16G))
  offset = PTRS_PER_PUD;
 else
  offset = PTRS_PER_PMD;
 rpte = __real_pte(__pte(old_pte), ptep, offset);

 if (!cpu_has_feature(CPU_FTR_COHERENT_ICACHE))




  rflags = hash_page_do_lazy_icache(rflags, __pte(old_pte), trap);


 if (unlikely(old_pte & H_PAGE_HASHPTE)) {

  unsigned long gslot;

  gslot = pte_get_hash_gslot(vpn, shift, ssize, rpte, 0);
  if (mmu_hash_ops.hpte_updatepp(gslot, rflags, vpn, mmu_psize,
            mmu_psize, ssize, flags) == -1)
   old_pte &= ~_PAGE_HPTEFLAGS;
 }

 if (likely(!(old_pte & H_PAGE_HASHPTE))) {
  unsigned long hash = hpt_hash(vpn, shift, ssize);

  pa = pte_pfn(__pte(old_pte)) << PAGE_SHIFT;


  new_pte = (new_pte & ~_PAGE_HPTEFLAGS) | H_PAGE_HASHPTE;

  slot = hpte_insert_repeating(hash, vpn, pa, rflags, 0,
          mmu_psize, ssize);





  if (unlikely(slot == -2)) {
   *ptep = __pte(old_pte);
   hash_failure_debug(ea, access, vsid, trap, ssize,
        mmu_psize, mmu_psize, old_pte);
   return -1;
  }

  new_pte |= pte_set_hidx(ptep, rpte, 0, slot, offset);
 }




 *ptep = __pte(new_pte & ~H_PAGE_BUSY);
 return 0;
}
