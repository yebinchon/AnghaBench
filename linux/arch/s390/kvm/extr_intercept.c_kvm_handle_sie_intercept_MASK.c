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
struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct TYPE_4__ {int /*<<< orphan*/  exit_io_request; int /*<<< orphan*/  exit_external_request; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__ stat; int /*<<< orphan*/  kvm; } ;
struct TYPE_5__ {int icptcode; int icptstatus; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ICPT_EXTINT 138 
#define  ICPT_EXTREQ 137 
#define  ICPT_INST 136 
#define  ICPT_IOREQ 135 
#define  ICPT_KSS 134 
#define  ICPT_OPEREXC 133 
#define  ICPT_PARTEXEC 132 
#define  ICPT_PROGI 131 
#define  ICPT_STOP 130 
#define  ICPT_VALIDITY 129 
#define  ICPT_WAIT 128 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*) ; 

int FUNC11(struct kvm_vcpu *vcpu)
{
	int rc, per_rc = 0;

	if (FUNC7(vcpu->kvm))
		return -EOPNOTSUPP;

	switch (vcpu->arch.sie_block->icptcode) {
	case ICPT_EXTREQ:
		vcpu->stat.exit_external_request++;
		return 0;
	case ICPT_IOREQ:
		vcpu->stat.exit_io_request++;
		return 0;
	case ICPT_INST:
		rc = FUNC1(vcpu);
		break;
	case ICPT_PROGI:
		return FUNC4(vcpu);
	case ICPT_EXTINT:
		return FUNC0(vcpu);
	case ICPT_WAIT:
		return FUNC9(vcpu);
	case ICPT_VALIDITY:
		return FUNC6(vcpu);
	case ICPT_STOP:
		return FUNC5(vcpu);
	case ICPT_OPEREXC:
		rc = FUNC2(vcpu);
		break;
	case ICPT_PARTEXEC:
		rc = FUNC3(vcpu);
		break;
	case ICPT_KSS:
		rc = FUNC10(vcpu);
		break;
	default:
		return -EOPNOTSUPP;
	}

	/* process PER, also if the instrution is processed in user space */
	if (vcpu->arch.sie_block->icptstatus & 0x02 &&
	    (!rc || rc == -EOPNOTSUPP))
		per_rc = FUNC8(vcpu);
	return per_rc ? per_rc : rc;
}