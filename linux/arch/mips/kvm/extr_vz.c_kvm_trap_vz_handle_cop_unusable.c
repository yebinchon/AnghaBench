
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int host_cp0_cause; int aux_inuse; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm_run* run; } ;
struct kvm_run {int exit_reason; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int BUG () ;
 int CAUSEB_CE ;
 int CAUSEF_CE ;


 int KVM_EXIT_INTERNAL_ERROR ;
 int KVM_MIPS_AUX_FPU ;
 int RESUME_GUEST ;
 int RESUME_HOST ;
 scalar_t__ WARN_ON (int) ;
 int kvm_mips_guest_has_fpu (TYPE_1__*) ;
 int kvm_own_fpu (struct kvm_vcpu*) ;
 int preempt_enable () ;

__attribute__((used)) static int kvm_trap_vz_handle_cop_unusable(struct kvm_vcpu *vcpu)
{
 struct kvm_run *run = vcpu->run;
 u32 cause = vcpu->arch.host_cp0_cause;
 enum emulation_result er = 128;
 int ret = RESUME_GUEST;

 if (((cause & CAUSEF_CE) >> CAUSEB_CE) == 1) {





  if (WARN_ON(!kvm_mips_guest_has_fpu(&vcpu->arch) ||
       vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU)) {
   preempt_enable();
   return 128;
  }

  kvm_own_fpu(vcpu);
  er = 129;
 }


 switch (er) {
 case 129:
  ret = RESUME_GUEST;
  break;

 case 128:
  run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  ret = RESUME_HOST;
  break;

 default:
  BUG();
 }
 return ret;
}
