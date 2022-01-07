
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HPTE_R_C ;
 unsigned long HPTE_R_G ;
 unsigned long HPTE_R_I ;
 unsigned long HPTE_R_M ;
 unsigned long HPTE_R_N ;
 int HPTE_R_PP0 ;
 unsigned long HPTE_R_R ;
 unsigned long HPTE_R_W ;
 int MMU_FTR_KERNEL_RO ;
 unsigned long _PAGE_CACHE_CTL ;
 unsigned long _PAGE_DIRTY ;
 unsigned long _PAGE_EXEC ;
 unsigned long _PAGE_NON_IDEMPOTENT ;
 unsigned long _PAGE_PRIVILEGED ;
 unsigned long _PAGE_RWX ;
 unsigned long _PAGE_SAO ;
 unsigned long _PAGE_TOLERANT ;
 unsigned long _PAGE_WRITE ;
 scalar_t__ mmu_has_feature (int ) ;
 unsigned long pte_to_hpte_pkey_bits (unsigned long) ;

unsigned long htab_convert_pte_flags(unsigned long pteflags)
{
 unsigned long rflags = 0;


 if ((pteflags & _PAGE_EXEC) == 0)
  rflags |= HPTE_R_N;







 if (pteflags & _PAGE_PRIVILEGED) {



  if (!(pteflags & _PAGE_WRITE)) {
   if (mmu_has_feature(MMU_FTR_KERNEL_RO))
    rflags |= (HPTE_R_PP0 | 0x2);
   else
    rflags |= 0x3;
  }
 } else {
  if (pteflags & _PAGE_RWX)
   rflags |= 0x2;
  if (!((pteflags & _PAGE_WRITE) && (pteflags & _PAGE_DIRTY)))
   rflags |= 0x1;
 }




 rflags |= HPTE_R_R;

 if (pteflags & _PAGE_DIRTY)
  rflags |= HPTE_R_C;




 if ((pteflags & _PAGE_CACHE_CTL) == _PAGE_TOLERANT)
  rflags |= HPTE_R_I;
 else if ((pteflags & _PAGE_CACHE_CTL) == _PAGE_NON_IDEMPOTENT)
  rflags |= (HPTE_R_I | HPTE_R_G);
 else if ((pteflags & _PAGE_CACHE_CTL) == _PAGE_SAO)
  rflags |= (HPTE_R_W | HPTE_R_I | HPTE_R_M);
 else



  rflags |= HPTE_R_M;

 rflags |= pte_to_hpte_pkey_bits(pteflags);
 return rflags;
}
