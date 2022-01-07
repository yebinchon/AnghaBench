
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pir; } ;
struct vcpu_vmx {TYPE_1__ pi_desc; } ;
struct kvm_vcpu {int dummy; } ;


 int memset (int ,int ,int) ;
 int pi_clear_on (TYPE_1__*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_apicv_post_state_restore(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 pi_clear_on(&vmx->pi_desc);
 memset(vmx->pi_desc.pir, 0, sizeof(vmx->pi_desc.pir));
}
