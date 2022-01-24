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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ enable; } ;
struct kvm_vcpu_hv_stimer {scalar_t__ exp_time; int /*<<< orphan*/  msg_pending; scalar_t__ count; TYPE_1__ config; } ;
struct kvm_vcpu_hv {struct kvm_vcpu_hv_stimer* stimer; int /*<<< orphan*/  stimer_pending_bitmap; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu_hv_stimer*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu_hv_stimer*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu_hv_stimer*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu_hv_stimer*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct kvm_vcpu_hv* FUNC6 (struct kvm_vcpu*) ; 

void FUNC7(struct kvm_vcpu *vcpu)
{
	struct kvm_vcpu_hv *hv_vcpu = FUNC6(vcpu);
	struct kvm_vcpu_hv_stimer *stimer;
	u64 time_now, exp_time;
	int i;

	for (i = 0; i < FUNC0(hv_vcpu->stimer); i++)
		if (FUNC5(i, hv_vcpu->stimer_pending_bitmap)) {
			stimer = &hv_vcpu->stimer[i];
			if (stimer->config.enable) {
				exp_time = stimer->exp_time;

				if (exp_time) {
					time_now =
						FUNC1(vcpu->kvm);
					if (time_now >= exp_time)
						FUNC3(stimer);
				}

				if ((stimer->config.enable) &&
				    stimer->count) {
					if (!stimer->msg_pending)
						FUNC4(stimer);
				} else
					FUNC2(stimer);
			}
		}
}