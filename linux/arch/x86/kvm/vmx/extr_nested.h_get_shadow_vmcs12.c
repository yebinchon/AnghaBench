
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcs12 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {struct vmcs12* cached_shadow_vmcs12; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;


 TYPE_2__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static inline struct vmcs12 *get_shadow_vmcs12(struct kvm_vcpu *vcpu)
{
 return to_vmx(vcpu)->nested.cached_shadow_vmcs12;
}
