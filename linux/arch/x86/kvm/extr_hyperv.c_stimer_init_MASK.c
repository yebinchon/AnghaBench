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
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct kvm_vcpu_hv_stimer {int index; TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu_hv_stimer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu_hv_stimer*) ; 
 int /*<<< orphan*/  stimer_timer_callback ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu_hv_stimer *stimer, int timer_index)
{
	FUNC1(stimer, 0, sizeof(*stimer));
	stimer->index = timer_index;
	FUNC0(&stimer->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	stimer->timer.function = stimer_timer_callback;
	FUNC2(stimer);
}