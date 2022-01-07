
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int pgd_t ;


 unsigned long _PAGE_ACCESSED ;
 unsigned long _PAGE_DIRTY ;
 int * __find_linux_pte (int *,unsigned long,int *,unsigned int*) ;
 int kvmppc_radix_update_pte (struct kvm*,int *,int ,unsigned long,unsigned long,unsigned int) ;
 scalar_t__ pte_present (int ) ;
 scalar_t__ pte_write (int ) ;

bool kvmppc_hv_handle_set_rc(struct kvm *kvm, pgd_t *pgtable, bool writing,
        unsigned long gpa, unsigned int lpid)
{
 unsigned long pgflags;
 unsigned int shift;
 pte_t *ptep;






 pgflags = _PAGE_ACCESSED;
 if (writing)
  pgflags |= _PAGE_DIRTY;





 ptep = __find_linux_pte(pgtable, gpa, ((void*)0), &shift);
 if (ptep && pte_present(*ptep) && (!writing || pte_write(*ptep))) {
  kvmppc_radix_update_pte(kvm, ptep, 0, pgflags, gpa, shift);
  return 1;
 }
 return 0;
}
