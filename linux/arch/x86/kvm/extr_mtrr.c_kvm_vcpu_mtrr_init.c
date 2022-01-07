
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int head; } ;
struct TYPE_4__ {TYPE_1__ mtrr_state; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int INIT_LIST_HEAD (int *) ;

void kvm_vcpu_mtrr_init(struct kvm_vcpu *vcpu)
{
 INIT_LIST_HEAD(&vcpu->arch.mtrr_state.head);
}
