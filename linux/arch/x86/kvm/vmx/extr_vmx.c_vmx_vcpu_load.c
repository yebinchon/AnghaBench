
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int host_debugctlmsr; int host_pkru; } ;
struct kvm_vcpu {int dummy; } ;


 int get_debugctlmsr () ;
 int read_pkru () ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_vcpu_load_vmcs (struct kvm_vcpu*,int) ;
 int vmx_vcpu_pi_load (struct kvm_vcpu*,int) ;

void vmx_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 vmx_vcpu_load_vmcs(vcpu, cpu);

 vmx_vcpu_pi_load(vcpu, cpu);

 vmx->host_pkru = read_pkru();
 vmx->host_debugctlmsr = get_debugctlmsr();
}
