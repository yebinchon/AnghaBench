
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;


 unsigned long __radix_pte_update (int *,unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long kvmppc_radix_update_pte(struct kvm *kvm, pte_t *ptep,
          unsigned long clr, unsigned long set,
          unsigned long addr, unsigned int shift)
{
 return __radix_pte_update(ptep, clr, set);
}
