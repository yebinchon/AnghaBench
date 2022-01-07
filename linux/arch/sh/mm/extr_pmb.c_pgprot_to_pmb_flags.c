
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int pgprot_t ;


 unsigned long PMB_C ;
 unsigned long PMB_UB ;
 unsigned long PMB_WT ;
 int _PAGE_CACHABLE ;
 int _PAGE_WT ;
 int pgprot_val (int ) ;

__attribute__((used)) static inline unsigned long pgprot_to_pmb_flags(pgprot_t prot)
{
 unsigned long pmb_flags = 0;
 u64 flags = pgprot_val(prot);

 if (flags & _PAGE_CACHABLE)
  pmb_flags |= PMB_C;
 if (flags & _PAGE_WT)
  pmb_flags |= PMB_WT | PMB_UB;

 return pmb_flags;
}
