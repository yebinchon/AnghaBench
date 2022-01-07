
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct kvm_vcpu {int dummy; } ;
typedef int exit_handle_fn ;


 int * arm_exit_handlers ;
 size_t kvm_vcpu_trap_get_class (struct kvm_vcpu*) ;

__attribute__((used)) static exit_handle_fn kvm_get_exit_handler(struct kvm_vcpu *vcpu)
{
 u8 hsr_ec = kvm_vcpu_trap_get_class(vcpu);

 return arm_exit_handlers[hsr_ec];
}
