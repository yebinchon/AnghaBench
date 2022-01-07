
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wfi_exit_stat; int wfe_exit_stat; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
struct kvm_run {int dummy; } ;


 int ESR_ELx_WFx_ISS_WFE ;
 int KVM_REQ_UNHALT ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 int kvm_skip_instr (struct kvm_vcpu*,int ) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 int kvm_vcpu_get_hsr (struct kvm_vcpu*) ;
 int kvm_vcpu_on_spin (struct kvm_vcpu*,int ) ;
 int kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 int trace_kvm_wfx_arm64 (int ,int) ;
 int vcpu_mode_priv (struct kvm_vcpu*) ;
 int * vcpu_pc (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_handle_wfx(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 if (kvm_vcpu_get_hsr(vcpu) & ESR_ELx_WFx_ISS_WFE) {
  trace_kvm_wfx_arm64(*vcpu_pc(vcpu), 1);
  vcpu->stat.wfe_exit_stat++;
  kvm_vcpu_on_spin(vcpu, vcpu_mode_priv(vcpu));
 } else {
  trace_kvm_wfx_arm64(*vcpu_pc(vcpu), 0);
  vcpu->stat.wfi_exit_stat++;
  kvm_vcpu_block(vcpu);
  kvm_clear_request(KVM_REQ_UNHALT, vcpu);
 }

 kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));

 return 1;
}
