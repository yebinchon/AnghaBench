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
struct kvm_vcpu_hv_stimer {int msg_pending; scalar_t__ exp_time; int /*<<< orphan*/  index; int /*<<< orphan*/  timer; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  stimer_pending_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct kvm_vcpu* FUNC2 (struct kvm_vcpu_hv_stimer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu_hv_stimer *stimer)
{
	struct kvm_vcpu *vcpu = FUNC2(stimer);

	FUNC3(FUNC2(stimer)->vcpu_id,
				    stimer->index);

	FUNC1(&stimer->timer);
	FUNC0(stimer->index,
		  FUNC4(vcpu)->stimer_pending_bitmap);
	stimer->msg_pending = false;
	stimer->exp_time = 0;
}