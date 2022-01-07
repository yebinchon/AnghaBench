
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int pin_based_vm_exec_control; } ;


 int PIN_BASED_EXT_INTR_MASK ;
 TYPE_1__* get_vmcs12 (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool nested_exit_on_intr(struct kvm_vcpu *vcpu)
{
 return get_vmcs12(vcpu)->pin_based_vm_exec_control &
  PIN_BASED_EXT_INTR_MASK;
}
