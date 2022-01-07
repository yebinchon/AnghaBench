
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_coproc {int dummy; } ;
struct TYPE_2__ {int aux_inuse; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_MIPS_AUX_FPU ;
 int KVM_MIPS_AUX_MSA ;
 int KVM_TRACE_AUX_ENABLE ;
 int KVM_TRACE_AUX_FPU ;
 int KVM_TRACE_AUX_RESTORE ;
 int MIPS_CONF5_FRE ;
 unsigned int ST0_CU1 ;
 unsigned int ST0_FR ;
 int __kvm_restore_fpu (TYPE_1__*) ;
 int change_c0_config5 (int ,unsigned int) ;
 int change_c0_status (unsigned int,unsigned int) ;
 scalar_t__ cpu_has_fre ;
 scalar_t__ cpu_has_msa ;
 int enable_fpu_hazard () ;
 int kvm_lose_fpu (struct kvm_vcpu*) ;
 unsigned int kvm_read_c0_guest_config5 (struct mips_coproc*) ;
 unsigned int kvm_read_c0_guest_status (struct mips_coproc*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int trace_kvm_aux (struct kvm_vcpu*,int ,int ) ;

void kvm_own_fpu(struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 unsigned int sr, cfg5;

 preempt_disable();

 sr = kvm_read_c0_guest_status(cop0);
 if (cpu_has_msa && sr & ST0_CU1 && !(sr & ST0_FR) &&
     vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA)
  kvm_lose_fpu(vcpu);





 change_c0_status(ST0_CU1 | ST0_FR, sr);
 if (cpu_has_fre) {
  cfg5 = kvm_read_c0_guest_config5(cop0);
  change_c0_config5(MIPS_CONF5_FRE, cfg5);
 }
 enable_fpu_hazard();


 if (!(vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU)) {
  __kvm_restore_fpu(&vcpu->arch);
  vcpu->arch.aux_inuse |= KVM_MIPS_AUX_FPU;
  trace_kvm_aux(vcpu, KVM_TRACE_AUX_RESTORE, KVM_TRACE_AUX_FPU);
 } else {
  trace_kvm_aux(vcpu, KVM_TRACE_AUX_ENABLE, KVM_TRACE_AUX_FPU);
 }

 preempt_enable();
}
