
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aux_inuse; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_MIPS_AUX_FPU ;
 int KVM_MIPS_AUX_MSA ;
 int KVM_TRACE_AUX_DISCARD ;
 int KVM_TRACE_AUX_FPU ;
 int KVM_TRACE_AUX_MSA ;
 int ST0_CU1 ;
 int ST0_FR ;
 int clear_c0_status (int) ;
 scalar_t__ cpu_has_msa ;
 int disable_msa () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int trace_kvm_aux (struct kvm_vcpu*,int ,int ) ;

void kvm_drop_fpu(struct kvm_vcpu *vcpu)
{
 preempt_disable();
 if (cpu_has_msa && vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA) {
  disable_msa();
  trace_kvm_aux(vcpu, KVM_TRACE_AUX_DISCARD, KVM_TRACE_AUX_MSA);
  vcpu->arch.aux_inuse &= ~KVM_MIPS_AUX_MSA;
 }
 if (vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU) {
  clear_c0_status(ST0_CU1 | ST0_FR);
  trace_kvm_aux(vcpu, KVM_TRACE_AUX_DISCARD, KVM_TRACE_AUX_FPU);
  vcpu->arch.aux_inuse &= ~KVM_MIPS_AUX_FPU;
 }
 preempt_enable();
}
