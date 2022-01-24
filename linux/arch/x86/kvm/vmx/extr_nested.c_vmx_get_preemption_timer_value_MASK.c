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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_5__ {int virtual_tsc_khz; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  preemption_timer; } ;
struct TYPE_6__ {TYPE_1__ nested; } ;

/* Variables and functions */
 int VMX_MISC_EMULATED_PREEMPTION_TIMER_RATE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static u32 FUNC4(struct kvm_vcpu *vcpu)
{
	ktime_t remaining =
		FUNC1(&FUNC3(vcpu)->nested.preemption_timer);
	u64 value;

	if (FUNC2(remaining) <= 0)
		return 0;

	value = FUNC2(remaining) * vcpu->arch.virtual_tsc_khz;
	FUNC0(value, 1000000);
	return value >> VMX_MISC_EMULATED_PREEMPTION_TIMER_RATE;
}