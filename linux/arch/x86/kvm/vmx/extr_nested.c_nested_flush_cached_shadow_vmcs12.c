
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs12 {unsigned long long vmcs_link_pointer; } ;
struct TYPE_2__ {int kvm; } ;
struct vcpu_vmx {TYPE_1__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;


 int VMCS12_SIZE ;
 int get_shadow_vmcs12 (struct kvm_vcpu*) ;
 int kvm_write_guest (int ,unsigned long long,int ,int ) ;
 int nested_cpu_has_shadow_vmcs (struct vmcs12*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static void nested_flush_cached_shadow_vmcs12(struct kvm_vcpu *vcpu,
           struct vmcs12 *vmcs12)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (!nested_cpu_has_shadow_vmcs(vmcs12) ||
     vmcs12->vmcs_link_pointer == -1ull)
  return;

 kvm_write_guest(vmx->vcpu.kvm, vmcs12->vmcs_link_pointer,
   get_shadow_vmcs12(vcpu), VMCS12_SIZE);
}
