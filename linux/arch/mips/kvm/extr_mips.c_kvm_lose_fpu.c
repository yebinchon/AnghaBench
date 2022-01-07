
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aux_inuse; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CONFIG_KVM_MIPS_VZ ;
 int IS_ENABLED (int ) ;
 int KVM_MIPS_AUX_FPU ;
 int KVM_MIPS_AUX_MSA ;
 int KVM_TRACE_AUX_FPU ;
 int KVM_TRACE_AUX_FPU_MSA ;
 int KVM_TRACE_AUX_SAVE ;
 int MIPS_CONF5_MSAEN ;
 int ST0_CU1 ;
 int ST0_FR ;
 int __kvm_save_fpu (TYPE_1__*) ;
 int __kvm_save_msa (TYPE_1__*) ;
 int clear_c0_status (int) ;
 scalar_t__ cpu_has_msa ;
 int disable_fpu_hazard () ;
 int disable_msa () ;
 int enable_fpu_hazard () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int set_c0_config5 (int ) ;
 int set_c0_status (int) ;
 int trace_kvm_aux (struct kvm_vcpu*,int ,int ) ;

void kvm_lose_fpu(struct kvm_vcpu *vcpu)
{







 preempt_disable();
 if (cpu_has_msa && vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA) {
  if (!IS_ENABLED(CONFIG_KVM_MIPS_VZ)) {
   set_c0_config5(MIPS_CONF5_MSAEN);
   enable_fpu_hazard();
  }

  __kvm_save_msa(&vcpu->arch);
  trace_kvm_aux(vcpu, KVM_TRACE_AUX_SAVE, KVM_TRACE_AUX_FPU_MSA);


  disable_msa();
  if (vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU) {
   clear_c0_status(ST0_CU1 | ST0_FR);
   disable_fpu_hazard();
  }
  vcpu->arch.aux_inuse &= ~(KVM_MIPS_AUX_FPU | KVM_MIPS_AUX_MSA);
 } else if (vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU) {
  if (!IS_ENABLED(CONFIG_KVM_MIPS_VZ)) {
   set_c0_status(ST0_CU1);
   enable_fpu_hazard();
  }

  __kvm_save_fpu(&vcpu->arch);
  vcpu->arch.aux_inuse &= ~KVM_MIPS_AUX_FPU;
  trace_kvm_aux(vcpu, KVM_TRACE_AUX_SAVE, KVM_TRACE_AUX_FPU);


  clear_c0_status(ST0_CU1 | ST0_FR);
  disable_fpu_hazard();
 }
 preempt_enable();
}
