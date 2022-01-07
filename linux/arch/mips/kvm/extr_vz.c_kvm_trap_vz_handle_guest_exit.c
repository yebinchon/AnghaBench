
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int vz_resvd_exits; int vz_gpa_exits; int vz_ghfc_exits; int vz_gva_exits; int vz_grr_exits; int vz_hc_exits; int vz_gsfc_exits; int vz_gpsi_exits; } ;
struct TYPE_4__ {int host_cp0_cause; int host_cp0_guestctl0; scalar_t__ pc; } ;
struct kvm_vcpu {TYPE_3__* run; TYPE_2__ stat; TYPE_1__ arch; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_6__ {int exit_reason; } ;


 int EMULATE_DONE ;
 int EMULATE_HYPERCALL ;
 int KVM_EXIT_INTERNAL_ERROR ;
 scalar_t__ KVM_TRACE_EXIT_GEXCCODE_BASE ;
 int MIPS_GCTL0_GEXC ;







 int MIPS_GCTL0_GEXC_SHIFT ;
 int RESUME_GUEST ;
 int RESUME_HOST ;
 int kvm_mips_handle_hypcall (struct kvm_vcpu*) ;
 int kvm_trap_vz_handle_ghfc (int,int*,struct kvm_vcpu*) ;
 int kvm_trap_vz_handle_gpsi (int,int*,struct kvm_vcpu*) ;
 int kvm_trap_vz_handle_gsfc (int,int*,struct kvm_vcpu*) ;
 int kvm_trap_vz_handle_hc (int,int*,struct kvm_vcpu*) ;
 int kvm_trap_vz_no_handler_guest_exit (int,int,int*,struct kvm_vcpu*) ;
 int trace_kvm_exit (struct kvm_vcpu*,scalar_t__) ;

__attribute__((used)) static int kvm_trap_vz_handle_guest_exit(struct kvm_vcpu *vcpu)
{
 u32 *opc = (u32 *) vcpu->arch.pc;
 u32 cause = vcpu->arch.host_cp0_cause;
 enum emulation_result er = EMULATE_DONE;
 u32 gexccode = (vcpu->arch.host_cp0_guestctl0 &
   MIPS_GCTL0_GEXC) >> MIPS_GCTL0_GEXC_SHIFT;
 int ret = RESUME_GUEST;

 trace_kvm_exit(vcpu, KVM_TRACE_EXIT_GEXCCODE_BASE + gexccode);
 switch (gexccode) {
 case 132:
  ++vcpu->stat.vz_gpsi_exits;
  er = kvm_trap_vz_handle_gpsi(cause, opc, vcpu);
  break;
 case 130:
  ++vcpu->stat.vz_gsfc_exits;
  er = kvm_trap_vz_handle_gsfc(cause, opc, vcpu);
  break;
 case 128:
  ++vcpu->stat.vz_hc_exits;
  er = kvm_trap_vz_handle_hc(cause, opc, vcpu);
  break;
 case 131:
  ++vcpu->stat.vz_grr_exits;
  er = kvm_trap_vz_no_handler_guest_exit(gexccode, cause, opc,
             vcpu);
  break;
 case 129:
  ++vcpu->stat.vz_gva_exits;
  er = kvm_trap_vz_no_handler_guest_exit(gexccode, cause, opc,
             vcpu);
  break;
 case 134:
  ++vcpu->stat.vz_ghfc_exits;
  er = kvm_trap_vz_handle_ghfc(cause, opc, vcpu);
  break;
 case 133:
  ++vcpu->stat.vz_gpa_exits;
  er = kvm_trap_vz_no_handler_guest_exit(gexccode, cause, opc,
             vcpu);
  break;
 default:
  ++vcpu->stat.vz_resvd_exits;
  er = kvm_trap_vz_no_handler_guest_exit(gexccode, cause, opc,
             vcpu);
  break;

 }

 if (er == EMULATE_DONE) {
  ret = RESUME_GUEST;
 } else if (er == EMULATE_HYPERCALL) {
  ret = kvm_mips_handle_hypcall(vcpu);
 } else {
  vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  ret = RESUME_HOST;
 }
 return ret;
}
