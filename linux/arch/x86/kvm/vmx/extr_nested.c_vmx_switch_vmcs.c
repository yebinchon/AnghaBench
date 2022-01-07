
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {struct loaded_vmcs* loaded_vmcs; } ;
struct loaded_vmcs {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int get_cpu () ;
 int put_cpu () ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_segment_cache_clear (struct vcpu_vmx*) ;
 int vmx_sync_vmcs_host_state (struct vcpu_vmx*,struct loaded_vmcs*) ;
 int vmx_vcpu_load_vmcs (struct kvm_vcpu*,int) ;

__attribute__((used)) static void vmx_switch_vmcs(struct kvm_vcpu *vcpu, struct loaded_vmcs *vmcs)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct loaded_vmcs *prev;
 int cpu;

 if (vmx->loaded_vmcs == vmcs)
  return;

 cpu = get_cpu();
 prev = vmx->loaded_vmcs;
 vmx->loaded_vmcs = vmcs;
 vmx_vcpu_load_vmcs(vcpu, cpu);
 vmx_sync_vmcs_host_state(vmx, prev);
 put_cpu();

 vmx_segment_cache_clear(vmx);
}
