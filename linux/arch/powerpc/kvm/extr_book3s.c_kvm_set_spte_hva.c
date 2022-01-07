
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
typedef int pte_t ;
struct TYPE_3__ {int (* set_spte_hva ) (struct kvm*,unsigned long,int ) ;} ;


 int stub1 (struct kvm*,unsigned long,int ) ;

int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte)
{
 kvm->arch.kvm_ops->set_spte_hva(kvm, hva, pte);
 return 0;
}
