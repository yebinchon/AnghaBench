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
struct vmcb {int dummy; } ;
struct vcpu_svm {int /*<<< orphan*/  vcpu; TYPE_2__* vmcb; } ;
struct kvm_host_map {struct vmcb* hva; } ;
struct TYPE_3__ {int /*<<< orphan*/  rax; } ;
struct TYPE_4__ {TYPE_1__ save; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvm_host_map*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct kvm_host_map*,int) ; 
 scalar_t__ FUNC5 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmcb*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct vcpu_svm *svm)
{
	struct vmcb *nested_vmcb;
	struct kvm_host_map map;
	int ret;

	if (FUNC5(svm))
		return 1;

	ret = FUNC3(&svm->vcpu, FUNC0(svm->vmcb->save.rax), &map);
	if (ret) {
		if (ret == -EINVAL)
			FUNC1(&svm->vcpu, 0);
		return 1;
	}

	nested_vmcb = map.hva;

	ret = FUNC2(&svm->vcpu);

	FUNC6(nested_vmcb, svm->vmcb);
	FUNC4(&svm->vcpu, &map, true);

	return ret;
}