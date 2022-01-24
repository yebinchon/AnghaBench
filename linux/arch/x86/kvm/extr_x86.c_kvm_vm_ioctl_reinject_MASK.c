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
struct kvm_reinject_control {int /*<<< orphan*/  pit_reinject; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct kvm_pit {TYPE_2__ pit_state; } ;
struct TYPE_3__ {struct kvm_pit* vpit; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_pit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm,
				 struct kvm_reinject_control *control)
{
	struct kvm_pit *pit = kvm->arch.vpit;

	if (!pit)
		return -ENXIO;

	/* pit->pit_state.lock was overloaded to prevent userspace from getting
	 * an inconsistent state after running multiple KVM_REINJECT_CONTROL
	 * ioctls in parallel.  Use a separate lock if that ioctl isn't rare.
	 */
	FUNC1(&pit->pit_state.lock);
	FUNC0(pit, control->pit_reinject);
	FUNC2(&pit->pit_state.lock);

	return 0;
}