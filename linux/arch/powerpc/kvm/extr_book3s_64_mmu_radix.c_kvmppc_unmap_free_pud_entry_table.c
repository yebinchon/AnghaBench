
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int kvmppc_radix_flush_pwc (struct kvm*,unsigned int) ;
 int kvmppc_unmap_free_pmd (struct kvm*,int *,int,unsigned int) ;
 int * pmd_offset (int *,int ) ;
 int pud_clear (int *) ;

__attribute__((used)) static void kvmppc_unmap_free_pud_entry_table(struct kvm *kvm, pud_t *pud,
     unsigned long gpa, unsigned int lpid)
{
 pmd_t *pmd = pmd_offset(pud, 0);






 pud_clear(pud);
 kvmppc_radix_flush_pwc(kvm, lpid);

 kvmppc_unmap_free_pmd(kvm, pmd, 0, lpid);
}
