
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ vpid02; } ;
struct vcpu_vmx {scalar_t__ vpid; TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static u16 nested_get_vpid02(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 return vmx->nested.vpid02 ? vmx->nested.vpid02 : vmx->vpid;
}
