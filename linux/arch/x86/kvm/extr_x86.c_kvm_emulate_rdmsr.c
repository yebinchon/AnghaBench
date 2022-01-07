
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ kvm_get_msr (struct kvm_vcpu*,int ,unsigned int*) ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int kvm_rax_write (struct kvm_vcpu*,unsigned int) ;
 int kvm_rcx_read (struct kvm_vcpu*) ;
 int kvm_rdx_write (struct kvm_vcpu*,unsigned int) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int trace_kvm_msr_read (int ,unsigned int) ;
 int trace_kvm_msr_read_ex (int ) ;

int kvm_emulate_rdmsr(struct kvm_vcpu *vcpu)
{
 u32 ecx = kvm_rcx_read(vcpu);
 u64 data;

 if (kvm_get_msr(vcpu, ecx, &data)) {
  trace_kvm_msr_read_ex(ecx);
  kvm_inject_gp(vcpu, 0);
  return 1;
 }

 trace_kvm_msr_read(ecx, data);

 kvm_rax_write(vcpu, data & -1u);
 kvm_rdx_write(vcpu, (data >> 32) & -1u);
 return kvm_skip_emulated_instruction(vcpu);
}
