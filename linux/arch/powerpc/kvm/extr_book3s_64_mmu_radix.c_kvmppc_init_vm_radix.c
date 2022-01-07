
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pgtable; } ;
struct kvm {TYPE_1__ arch; int mm; } ;


 int ENOMEM ;
 int pgd_alloc (int ) ;

int kvmppc_init_vm_radix(struct kvm *kvm)
{
 kvm->arch.pgtable = pgd_alloc(kvm->mm);
 if (!kvm->arch.pgtable)
  return -ENOMEM;
 return 0;
}
