#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vcpu_svm {int /*<<< orphan*/  dfr_reg; int /*<<< orphan*/  ir_list_lock; int /*<<< orphan*/  ir_list; int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DFR_FLAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vcpu_svm *svm)
{
	int ret;

	if (!FUNC2(&svm->vcpu))
		return 0;

	ret = FUNC1(&svm->vcpu);
	if (ret)
		return ret;

	FUNC0(&svm->ir_list);
	FUNC3(&svm->ir_list_lock);
	svm->dfr_reg = APIC_DFR_FLAT;

	return ret;
}