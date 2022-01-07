
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int mm; } ;
typedef int pud_t ;
typedef int pmd_t ;


 unsigned long PTRS_PER_PUD ;
 int kvmppc_unmap_free_pmd (struct kvm*,int *,int,unsigned int) ;
 int * pmd_offset (int *,int ) ;
 int pud_clear (int *) ;
 int pud_free (int ,int *) ;
 scalar_t__ pud_is_leaf (int ) ;
 int pud_present (int ) ;

__attribute__((used)) static void kvmppc_unmap_free_pud(struct kvm *kvm, pud_t *pud,
      unsigned int lpid)
{
 unsigned long iu;
 pud_t *p = pud;

 for (iu = 0; iu < PTRS_PER_PUD; ++iu, ++p) {
  if (!pud_present(*p))
   continue;
  if (pud_is_leaf(*p)) {
   pud_clear(p);
  } else {
   pmd_t *pmd;

   pmd = pmd_offset(p, 0);
   kvmppc_unmap_free_pmd(kvm, pmd, 1, lpid);
   pud_clear(p);
  }
 }
 pud_free(kvm->mm, pud);
}
