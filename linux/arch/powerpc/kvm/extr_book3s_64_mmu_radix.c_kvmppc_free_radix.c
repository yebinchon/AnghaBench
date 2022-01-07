
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pgtable; int lpid; } ;
struct kvm {TYPE_1__ arch; int mm; } ;


 int kvmppc_free_pgtable_radix (struct kvm*,int *,int ) ;
 int pgd_free (int ,int *) ;

void kvmppc_free_radix(struct kvm *kvm)
{
 if (kvm->arch.pgtable) {
  kvmppc_free_pgtable_radix(kvm, kvm->arch.pgtable,
       kvm->arch.lpid);
  pgd_free(kvm->mm, kvm->arch.pgtable);
  kvm->arch.pgtable = ((void*)0);
 }
}
