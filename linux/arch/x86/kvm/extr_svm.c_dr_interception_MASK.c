#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  switch_db_regs; } ;
struct TYPE_13__ {scalar_t__ guest_debug; TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_3__* vmcb; } ;
struct TYPE_11__ {int exit_info_1; int exit_code; } ;
struct TYPE_12__ {TYPE_2__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_DEBUGREG_WONT_EXIT ; 
 int SVM_EXITINFO_REG_MASK ; 
 int SVM_EXIT_READ_DR0 ; 
 int /*<<< orphan*/  X86_FEATURE_DECODEASSISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*) ; 
 int FUNC2 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,unsigned long*) ; 
 unsigned long FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,unsigned long) ; 
 int FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC9(struct vcpu_svm *svm)
{
	int reg, dr;
	unsigned long val;

	if (svm->vcpu.guest_debug == 0) {
		/*
		 * No more DR vmexits; force a reload of the debug registers
		 * and reenter on this instruction.  The next vmexit will
		 * retrieve the full state of the debug registers.
		 */
		FUNC1(svm);
		svm->vcpu.arch.switch_db_regs |= KVM_DEBUGREG_WONT_EXIT;
		return 1;
	}

	if (!FUNC0(X86_FEATURE_DECODEASSISTS))
		return FUNC2(svm);

	reg = svm->vmcb->control.exit_info_1 & SVM_EXITINFO_REG_MASK;
	dr = svm->vmcb->control.exit_code - SVM_EXIT_READ_DR0;

	if (dr >= 16) { /* mov to DRn */
		if (!FUNC6(&svm->vcpu, dr - 16))
			return 1;
		val = FUNC4(&svm->vcpu, reg);
		FUNC7(&svm->vcpu, dr - 16, val);
	} else {
		if (!FUNC6(&svm->vcpu, dr))
			return 1;
		FUNC3(&svm->vcpu, dr, &val);
		FUNC5(&svm->vcpu, reg, val);
	}

	return FUNC8(&svm->vcpu);
}