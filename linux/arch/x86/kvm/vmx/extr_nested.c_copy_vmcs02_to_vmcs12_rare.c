
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs12 {int dummy; } ;
struct TYPE_2__ {int vmcs02; int need_sync_vmcs02_to_vmcs12_rare; } ;
struct vcpu_vmx {int vcpu; int vmcs01; int * loaded_vmcs; TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int get_cpu () ;
 int put_cpu () ;
 int sync_vmcs02_to_vmcs12_rare (struct kvm_vcpu*,struct vmcs12*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_vcpu_load (int *,int) ;

__attribute__((used)) static void copy_vmcs02_to_vmcs12_rare(struct kvm_vcpu *vcpu,
           struct vmcs12 *vmcs12)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 int cpu;

 if (!vmx->nested.need_sync_vmcs02_to_vmcs12_rare)
  return;


 WARN_ON_ONCE(vmx->loaded_vmcs != &vmx->vmcs01);

 cpu = get_cpu();
 vmx->loaded_vmcs = &vmx->nested.vmcs02;
 vmx_vcpu_load(&vmx->vcpu, cpu);

 sync_vmcs02_to_vmcs12_rare(vcpu, vmcs12);

 vmx->loaded_vmcs = &vmx->vmcs01;
 vmx_vcpu_load(&vmx->vcpu, cpu);
 put_cpu();
}
