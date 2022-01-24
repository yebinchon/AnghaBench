#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * gpr; } ;
struct TYPE_8__ {int prodded; scalar_t__ hcall_needed; TYPE_2__ regs; int /*<<< orphan*/  ceded; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_4__* kvm; } ;
struct TYPE_6__ {int /*<<< orphan*/  rtas_tokens; int /*<<< orphan*/  enabled_hcalls; } ;
struct TYPE_9__ {int /*<<< orphan*/  srcu; TYPE_1__ arch; } ;

/* Variables and functions */
 int EINTR ; 
 int ENOENT ; 
#define  H_CEDE 153 
#define  H_CONFER 152 
#define  H_COPY_TOFROM_GUEST 151 
#define  H_CPPR 150 
#define  H_ENTER_NESTED 149 
#define  H_EOI 148 
 unsigned long H_FUNCTION ; 
#define  H_GET_TCE 147 
 unsigned long H_HARDWARE ; 
 unsigned long H_INTERRUPT ; 
#define  H_IPI 146 
#define  H_IPOLL 145 
#define  H_LOGICAL_CI_LOAD 144 
#define  H_LOGICAL_CI_STORE 143 
 unsigned long H_NOT_AVAILABLE ; 
#define  H_PAGE_INIT 142 
 unsigned long H_PARAMETER ; 
#define  H_PROD 141 
#define  H_PUT_TCE 140 
#define  H_PUT_TCE_INDIRECT 139 
#define  H_RANDOM 138 
#define  H_REGISTER_VPA 137 
#define  H_RTAS 136 
#define  H_SET_DABR 135 
#define  H_SET_MODE 134 
#define  H_SET_PARTITION_TABLE 133 
#define  H_SET_XDABR 132 
#define  H_STUFF_TCE 131 
 unsigned long H_SUCCESS ; 
#define  H_TLB_INVALIDATE 130 
 unsigned long H_TOO_HARD ; 
#define  H_XIRR 129 
#define  H_XIRR_X 128 
 unsigned long MAX_HCALL_OPCODE ; 
 int RESUME_GUEST ; 
 int RESUME_HOST ; 
 unsigned long FUNC0 (struct kvm_vcpu*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 unsigned long FUNC2 (struct kvm_vcpu*) ; 
 unsigned long FUNC3 (struct kvm_vcpu*) ; 
 unsigned long FUNC4 (struct kvm_vcpu*) ; 
 unsigned long FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 struct kvm_vcpu* FUNC7 (TYPE_4__*,unsigned long) ; 
 void* FUNC8 (struct kvm_vcpu*,int) ; 
 int FUNC9 (struct kvm_vcpu*) ; 
 unsigned long FUNC10 (struct kvm_vcpu*,void*,void*) ; 
 unsigned long FUNC11 (struct kvm_vcpu*) ; 
 unsigned long FUNC12 (struct kvm_vcpu*) ; 
 unsigned long FUNC13 (struct kvm_vcpu*,void*,void*,void*) ; 
 unsigned long FUNC14 (struct kvm_vcpu*,void*,void*,void*) ; 
 unsigned long FUNC15 (struct kvm_vcpu*,void*,void*,void*,void*) ; 
 unsigned long FUNC16 (struct kvm_vcpu*,void*) ; 
 unsigned long FUNC17 (struct kvm_vcpu*,void*,void*,void*,void*) ; 
 unsigned long FUNC18 (struct kvm_vcpu*,void*,void*) ; 
 unsigned long FUNC19 (struct kvm_vcpu*,void*,void*,void*,void*) ; 
 int FUNC20 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (struct kvm_vcpu*) ; 
 unsigned long FUNC23 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 () ; 

int FUNC32(struct kvm_vcpu *vcpu)
{
	unsigned long req = FUNC8(vcpu, 3);
	unsigned long target, ret = H_SUCCESS;
	int yield_count;
	struct kvm_vcpu *tvcpu;
	int idx, rc;

	if (req <= MAX_HCALL_OPCODE &&
	    !FUNC30(req/4, vcpu->kvm->arch.enabled_hcalls))
		return RESUME_HOST;

	switch (req) {
	case H_CEDE:
		break;
	case H_PROD:
		target = FUNC8(vcpu, 4);
		tvcpu = FUNC7(vcpu->kvm, target);
		if (!tvcpu) {
			ret = H_PARAMETER;
			break;
		}
		tvcpu->arch.prodded = 1;
		FUNC27();
		if (tvcpu->arch.ceded)
			FUNC6(tvcpu);
		break;
	case H_CONFER:
		target = FUNC8(vcpu, 4);
		if (target == -1)
			break;
		tvcpu = FUNC7(vcpu->kvm, target);
		if (!tvcpu) {
			ret = H_PARAMETER;
			break;
		}
		yield_count = FUNC8(vcpu, 5);
		if (FUNC9(tvcpu) != yield_count)
			break;
		FUNC1(tvcpu);
		break;
	case H_REGISTER_VPA:
		ret = FUNC0(vcpu, FUNC8(vcpu, 4),
					FUNC8(vcpu, 5),
					FUNC8(vcpu, 6));
		break;
	case H_RTAS:
		if (FUNC24(&vcpu->kvm->arch.rtas_tokens))
			return RESUME_HOST;

		idx = FUNC28(&vcpu->kvm->srcu);
		rc = FUNC20(vcpu);
		FUNC29(&vcpu->kvm->srcu, idx);

		if (rc == -ENOENT)
			return RESUME_HOST;
		else if (rc == 0)
			break;

		/* Send the error out to userspace via KVM_RUN */
		return rc;
	case H_LOGICAL_CI_LOAD:
		ret = FUNC11(vcpu);
		if (ret == H_TOO_HARD)
			return RESUME_HOST;
		break;
	case H_LOGICAL_CI_STORE:
		ret = FUNC12(vcpu);
		if (ret == H_TOO_HARD)
			return RESUME_HOST;
		break;
	case H_SET_MODE:
		ret = FUNC17(vcpu, FUNC8(vcpu, 4),
					FUNC8(vcpu, 5),
					FUNC8(vcpu, 6),
					FUNC8(vcpu, 7));
		if (ret == H_TOO_HARD)
			return RESUME_HOST;
		break;
	case H_XIRR:
	case H_CPPR:
	case H_EOI:
	case H_IPI:
	case H_IPOLL:
	case H_XIRR_X:
		if (FUNC22(vcpu)) {
			if (FUNC31()) {
				ret = H_NOT_AVAILABLE;
				return RESUME_GUEST;
			}
			ret = FUNC23(vcpu, req);
			break;
		}
		return RESUME_HOST;
	case H_SET_DABR:
		ret = FUNC16(vcpu, FUNC8(vcpu, 4));
		break;
	case H_SET_XDABR:
		ret = FUNC18(vcpu, FUNC8(vcpu, 4),
						FUNC8(vcpu, 5));
		break;
#ifdef CONFIG_SPAPR_TCE_IOMMU
	case H_GET_TCE:
		ret = kvmppc_h_get_tce(vcpu, kvmppc_get_gpr(vcpu, 4),
						kvmppc_get_gpr(vcpu, 5));
		if (ret == H_TOO_HARD)
			return RESUME_HOST;
		break;
	case H_PUT_TCE:
		ret = kvmppc_h_put_tce(vcpu, kvmppc_get_gpr(vcpu, 4),
						kvmppc_get_gpr(vcpu, 5),
						kvmppc_get_gpr(vcpu, 6));
		if (ret == H_TOO_HARD)
			return RESUME_HOST;
		break;
	case H_PUT_TCE_INDIRECT:
		ret = kvmppc_h_put_tce_indirect(vcpu, kvmppc_get_gpr(vcpu, 4),
						kvmppc_get_gpr(vcpu, 5),
						kvmppc_get_gpr(vcpu, 6),
						kvmppc_get_gpr(vcpu, 7));
		if (ret == H_TOO_HARD)
			return RESUME_HOST;
		break;
	case H_STUFF_TCE:
		ret = kvmppc_h_stuff_tce(vcpu, kvmppc_get_gpr(vcpu, 4),
						kvmppc_get_gpr(vcpu, 5),
						kvmppc_get_gpr(vcpu, 6),
						kvmppc_get_gpr(vcpu, 7));
		if (ret == H_TOO_HARD)
			return RESUME_HOST;
		break;
#endif
	case H_RANDOM:
		if (!FUNC26(&vcpu->arch.regs.gpr[4]))
			ret = H_HARDWARE;
		break;

	case H_SET_PARTITION_TABLE:
		ret = H_FUNCTION;
		if (FUNC25(vcpu->kvm))
			ret = FUNC5(vcpu);
		break;
	case H_ENTER_NESTED:
		ret = H_FUNCTION;
		if (!FUNC25(vcpu->kvm))
			break;
		ret = FUNC4(vcpu);
		if (ret == H_INTERRUPT) {
			FUNC21(vcpu, 3, 0);
			vcpu->arch.hcall_needed = 0;
			return -EINTR;
		} else if (ret == H_TOO_HARD) {
			FUNC21(vcpu, 3, 0);
			vcpu->arch.hcall_needed = 0;
			return RESUME_HOST;
		}
		break;
	case H_TLB_INVALIDATE:
		ret = H_FUNCTION;
		if (FUNC25(vcpu->kvm))
			ret = FUNC3(vcpu);
		break;
	case H_COPY_TOFROM_GUEST:
		ret = H_FUNCTION;
		if (FUNC25(vcpu->kvm))
			ret = FUNC2(vcpu);
		break;
	case H_PAGE_INIT:
		ret = FUNC13(vcpu, FUNC8(vcpu, 4),
					 FUNC8(vcpu, 5),
					 FUNC8(vcpu, 6));
		break;
	default:
		return RESUME_HOST;
	}
	FUNC21(vcpu, 3, ret);
	vcpu->arch.hcall_needed = 0;
	return RESUME_GUEST;
}