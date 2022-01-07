
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pteval_t ;


 unsigned long FOREIGN_FRAME_BIT ;
 unsigned long IDENTITY_FRAME_BIT ;
 unsigned long INVALID_P2M_ENTRY ;
 int PAGE_SHIFT ;
 int PTE_FLAGS_MASK ;
 int PTE_PFN_MASK ;
 int _PAGE_PRESENT ;
 unsigned long __pfn_to_mfn (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static pteval_t pte_pfn_to_mfn(pteval_t val)
{
 if (val & _PAGE_PRESENT) {
  unsigned long pfn = (val & PTE_PFN_MASK) >> PAGE_SHIFT;
  pteval_t flags = val & PTE_FLAGS_MASK;
  unsigned long mfn;

  mfn = __pfn_to_mfn(pfn);







  if (unlikely(mfn == INVALID_P2M_ENTRY)) {
   mfn = 0;
   flags = 0;
  } else
   mfn &= ~(FOREIGN_FRAME_BIT | IDENTITY_FRAME_BIT);
  val = ((pteval_t)mfn << PAGE_SHIFT) | flags;
 }

 return val;
}
