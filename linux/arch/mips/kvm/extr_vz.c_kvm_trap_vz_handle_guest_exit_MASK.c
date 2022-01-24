#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  vz_resvd_exits; int /*<<< orphan*/  vz_gpa_exits; int /*<<< orphan*/  vz_ghfc_exits; int /*<<< orphan*/  vz_gva_exits; int /*<<< orphan*/  vz_grr_exits; int /*<<< orphan*/  vz_hc_exits; int /*<<< orphan*/  vz_gsfc_exits; int /*<<< orphan*/  vz_gpsi_exits; } ;
struct TYPE_4__ {int host_cp0_cause; int host_cp0_guestctl0; scalar_t__ pc; } ;
struct kvm_vcpu {TYPE_3__* run; TYPE_2__ stat; TYPE_1__ arch; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_6__ {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int EMULATE_HYPERCALL ; 
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 scalar_t__ KVM_TRACE_EXIT_GEXCCODE_BASE ; 
 int MIPS_GCTL0_GEXC ; 
#define  MIPS_GCTL0_GEXC_GHFC 134 
#define  MIPS_GCTL0_GEXC_GPA 133 
#define  MIPS_GCTL0_GEXC_GPSI 132 
#define  MIPS_GCTL0_GEXC_GRR 131 
#define  MIPS_GCTL0_GEXC_GSFC 130 
#define  MIPS_GCTL0_GEXC_GVA 129 
#define  MIPS_GCTL0_GEXC_HC 128 
 int MIPS_GCTL0_GEXC_SHIFT ; 
 int RESUME_GUEST ; 
 int RESUME_HOST ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (int,int*,struct kvm_vcpu*) ; 
 int FUNC2 (int,int*,struct kvm_vcpu*) ; 
 int FUNC3 (int,int*,struct kvm_vcpu*) ; 
 int FUNC4 (int,int*,struct kvm_vcpu*) ; 
 int FUNC5 (int,int,int*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu)
{
	u32 *opc = (u32 *) vcpu->arch.pc;
	u32 cause = vcpu->arch.host_cp0_cause;
	enum emulation_result er = EMULATE_DONE;
	u32 gexccode = (vcpu->arch.host_cp0_guestctl0 &
			MIPS_GCTL0_GEXC) >> MIPS_GCTL0_GEXC_SHIFT;
	int ret = RESUME_GUEST;

	FUNC6(vcpu, KVM_TRACE_EXIT_GEXCCODE_BASE + gexccode);
	switch (gexccode) {
	case MIPS_GCTL0_GEXC_GPSI:
		++vcpu->stat.vz_gpsi_exits;
		er = FUNC2(cause, opc, vcpu);
		break;
	case MIPS_GCTL0_GEXC_GSFC:
		++vcpu->stat.vz_gsfc_exits;
		er = FUNC3(cause, opc, vcpu);
		break;
	case MIPS_GCTL0_GEXC_HC:
		++vcpu->stat.vz_hc_exits;
		er = FUNC4(cause, opc, vcpu);
		break;
	case MIPS_GCTL0_GEXC_GRR:
		++vcpu->stat.vz_grr_exits;
		er = FUNC5(gexccode, cause, opc,
						       vcpu);
		break;
	case MIPS_GCTL0_GEXC_GVA:
		++vcpu->stat.vz_gva_exits;
		er = FUNC5(gexccode, cause, opc,
						       vcpu);
		break;
	case MIPS_GCTL0_GEXC_GHFC:
		++vcpu->stat.vz_ghfc_exits;
		er = FUNC1(cause, opc, vcpu);
		break;
	case MIPS_GCTL0_GEXC_GPA:
		++vcpu->stat.vz_gpa_exits;
		er = FUNC5(gexccode, cause, opc,
						       vcpu);
		break;
	default:
		++vcpu->stat.vz_resvd_exits;
		er = FUNC5(gexccode, cause, opc,
						       vcpu);
		break;

	}

	if (er == EMULATE_DONE) {
		ret = RESUME_GUEST;
	} else if (er == EMULATE_HYPERCALL) {
		ret = FUNC0(vcpu);
	} else {
		vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
		ret = RESUME_HOST;
	}
	return ret;
}