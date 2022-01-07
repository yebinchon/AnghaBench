
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int kvm_rcx_read (struct kvm_vcpu*) ;
 int kvm_read_edx_eax (struct kvm_vcpu*) ;
 scalar_t__ kvm_set_msr (struct kvm_vcpu*,int ,int ) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int trace_kvm_msr_write (int ,int ) ;
 int trace_kvm_msr_write_ex (int ,int ) ;

int kvm_emulate_wrmsr(struct kvm_vcpu *vcpu)
{
 u32 ecx = kvm_rcx_read(vcpu);
 u64 data = kvm_read_edx_eax(vcpu);

 if (kvm_set_msr(vcpu, ecx, data)) {
  trace_kvm_msr_write_ex(ecx, data);
  kvm_inject_gp(vcpu, 0);
  return 1;
 }

 trace_kvm_msr_write(ecx, data);
 return kvm_skip_emulated_instruction(vcpu);
}
