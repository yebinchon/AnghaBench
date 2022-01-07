
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {int (* test_age_hva ) (struct kvm*,unsigned long) ;} ;


 int stub1 (struct kvm*,unsigned long) ;

int kvm_test_age_hva(struct kvm *kvm, unsigned long hva)
{
 return kvm->arch.kvm_ops->test_age_hva(kvm, hva);
}
