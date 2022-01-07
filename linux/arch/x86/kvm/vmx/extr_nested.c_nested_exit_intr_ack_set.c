
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int vm_exit_controls; } ;


 int VM_EXIT_ACK_INTR_ON_EXIT ;
 TYPE_1__* get_vmcs12 (struct kvm_vcpu*) ;

__attribute__((used)) static bool nested_exit_intr_ack_set(struct kvm_vcpu *vcpu)
{
 return get_vmcs12(vcpu)->vm_exit_controls &
  VM_EXIT_ACK_INTR_ON_EXIT;
}
