#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmcb_control_area {int pause_filter_count; } ;
struct vcpu_svm {TYPE_1__* vmcb; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_2__ {struct vmcb_control_area control; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCB_INTERCEPTS ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pause_filter_count ; 
 int /*<<< orphan*/  pause_filter_count_grow ; 
 int /*<<< orphan*/  pause_filter_count_max ; 
 struct vcpu_svm* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC2(vcpu);
	struct vmcb_control_area *control = &svm->vmcb->control;
	int old = control->pause_filter_count;

	control->pause_filter_count = FUNC0(old,
							pause_filter_count,
							pause_filter_count_grow,
							pause_filter_count_max);

	if (control->pause_filter_count != old) {
		FUNC1(svm->vmcb, VMCB_INTERCEPTS);
		FUNC3(vcpu->vcpu_id,
					    control->pause_filter_count, old);
	}
}