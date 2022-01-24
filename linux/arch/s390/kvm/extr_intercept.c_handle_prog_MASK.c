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
struct TYPE_5__ {TYPE_3__* sie_block; } ;
struct TYPE_4__ {int /*<<< orphan*/  exit_program_interruption; } ;
struct kvm_vcpu {TYPE_2__ arch; TYPE_1__ stat; } ;
typedef  int /*<<< orphan*/  psw_t ;
struct TYPE_6__ {scalar_t__ iprcc; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ PGM_SPECIFICATION ; 
 int /*<<< orphan*/  __LC_PGM_NEW_PSW ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu)
{
	psw_t psw;
	int rc;

	vcpu->stat.exit_program_interruption++;

	if (FUNC0(vcpu) && FUNC5(vcpu)) {
		rc = FUNC4(vcpu);
		if (rc)
			return rc;
		/* the interrupt might have been filtered out completely */
		if (vcpu->arch.sie_block->iprcc == 0)
			return 0;
	}

	FUNC7(vcpu, vcpu->arch.sie_block->iprcc);
	if (vcpu->arch.sie_block->iprcc == PGM_SPECIFICATION) {
		rc = FUNC6(vcpu, __LC_PGM_NEW_PSW, &psw, sizeof(psw_t));
		if (rc)
			return rc;
		/* Avoid endless loops of specification exceptions */
		if (!FUNC3(&psw))
			return -EOPNOTSUPP;
	}
	rc = FUNC1(vcpu);
	if (rc)
		return rc;

	return FUNC2(vcpu);
}