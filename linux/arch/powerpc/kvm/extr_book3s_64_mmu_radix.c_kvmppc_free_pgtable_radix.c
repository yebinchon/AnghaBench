
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 unsigned long PTRS_PER_PGD ;
 int kvmppc_unmap_free_pud (struct kvm*,int *,unsigned int) ;
 int pgd_clear (int *) ;
 int pgd_present (int ) ;
 int * pud_offset (int *,int ) ;

void kvmppc_free_pgtable_radix(struct kvm *kvm, pgd_t *pgd, unsigned int lpid)
{
 unsigned long ig;

 for (ig = 0; ig < PTRS_PER_PGD; ++ig, ++pgd) {
  pud_t *pud;

  if (!pgd_present(*pgd))
   continue;
  pud = pud_offset(pgd, 0);
  kvmppc_unmap_free_pud(kvm, pud, lpid);
  pgd_clear(pgd);
 }
}
