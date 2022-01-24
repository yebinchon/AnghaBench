#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vcpu_svm {TYPE_2__* vmcb; int /*<<< orphan*/  vcpu; } ;
struct TYPE_3__ {int /*<<< orphan*/  int_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCB_INTR ; 
 int /*<<< orphan*/  V_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC5 (struct vcpu_svm*) ; 

__attribute__((used)) static int FUNC6(struct vcpu_svm *svm)
{
	int ret;

	if (FUNC4(svm))
		return 1;

	ret = FUNC1(&svm->vcpu);

	FUNC0(svm);

	/* After a CLGI no interrupts should come */
	if (!FUNC2(&svm->vcpu)) {
		FUNC5(svm);
		svm->vmcb->control.int_ctl &= ~V_IRQ_MASK;
		FUNC3(svm->vmcb, VMCB_INTR);
	}

	return ret;
}