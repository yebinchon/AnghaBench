
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef int exit_handle_fn ;


 size_t ESR_ELx_EC (int ) ;
 int * arm_exit_handlers ;
 int kvm_vcpu_get_hsr (struct kvm_vcpu*) ;

__attribute__((used)) static exit_handle_fn kvm_get_exit_handler(struct kvm_vcpu *vcpu)
{
 u32 hsr = kvm_vcpu_get_hsr(vcpu);
 u8 hsr_ec = ESR_ELx_EC(hsr);

 return arm_exit_handlers[hsr_ec];
}
