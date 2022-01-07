
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 int kvmppc_radix_flush_pwc (struct kvm*,unsigned int) ;
 int kvmppc_unmap_free_pte (struct kvm*,int *,int,unsigned int) ;
 int pmd_clear (int *) ;
 int * pte_offset_kernel (int *,int ) ;

__attribute__((used)) static void kvmppc_unmap_free_pmd_entry_table(struct kvm *kvm, pmd_t *pmd,
     unsigned long gpa, unsigned int lpid)
{
 pte_t *pte = pte_offset_kernel(pmd, 0);






 pmd_clear(pmd);
 kvmppc_radix_flush_pwc(kvm, lpid);

 kvmppc_unmap_free_pte(kvm, pte, 0, lpid);
}
