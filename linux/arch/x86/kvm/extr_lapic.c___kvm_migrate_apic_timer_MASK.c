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
struct TYPE_6__ {TYPE_2__* apic; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct hrtimer {int dummy; } ;
struct TYPE_4__ {struct hrtimer timer; } ;
struct TYPE_5__ {TYPE_1__ lapic_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS_HARD ; 
 scalar_t__ FUNC0 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	struct hrtimer *timer;

	if (!FUNC3(vcpu) ||
		FUNC2(vcpu))
		return;

	timer = &vcpu->arch.apic->lapic_timer.timer;
	if (FUNC0(timer))
		FUNC1(timer, HRTIMER_MODE_ABS_HARD);
}