
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int mm; } ;
typedef int pte_t ;


 int radix__set_pte_at (int ,unsigned long,int *,int ,int ) ;

void kvmppc_radix_set_pte_at(struct kvm *kvm, unsigned long addr,
        pte_t *ptep, pte_t pte)
{
 radix__set_pte_at(kvm->mm, addr, ptep, pte, 0);
}
