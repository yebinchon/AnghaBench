
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aux_inuse; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm_run* run; } ;
struct kvm_run {int exit_reason; } ;


 int KVM_EXIT_INTERNAL_ERROR ;
 int KVM_MIPS_AUX_MSA ;
 int MIPS_CONF5_MSAEN ;
 int RESUME_GUEST ;
 int RESUME_HOST ;
 int ST0_CU1 ;
 int ST0_FR ;
 int kvm_mips_guest_has_msa (TYPE_1__*) ;
 int kvm_own_msa (struct kvm_vcpu*) ;
 int read_gc0_config5 () ;
 int read_gc0_status () ;

__attribute__((used)) static int kvm_trap_vz_handle_msa_disabled(struct kvm_vcpu *vcpu)
{
 struct kvm_run *run = vcpu->run;







 if (!kvm_mips_guest_has_msa(&vcpu->arch) ||
     (read_gc0_status() & (ST0_CU1 | ST0_FR)) == ST0_CU1 ||
     !(read_gc0_config5() & MIPS_CONF5_MSAEN) ||
     vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA) {
  run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  return RESUME_HOST;
 }

 kvm_own_msa(vcpu);

 return RESUME_GUEST;
}
