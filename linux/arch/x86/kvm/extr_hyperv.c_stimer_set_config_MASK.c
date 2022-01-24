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
union hv_stimer_config {scalar_t__ sintx; int /*<<< orphan*/  as_uint64; scalar_t__ enable; int /*<<< orphan*/  direct_mode; } ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {scalar_t__ enable; int /*<<< orphan*/  as_uint64; } ;
struct kvm_vcpu_hv_stimer {TYPE_1__ config; int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int /*<<< orphan*/  vcpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu_hv_stimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu_hv_stimer*,int) ; 
 TYPE_2__* FUNC2 (struct kvm_vcpu_hv_stimer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu_hv_stimer *stimer, u64 config,
			     bool host)
{
	union hv_stimer_config new_config = {.as_uint64 = config},
		old_config = {.as_uint64 = stimer->config.as_uint64};

	FUNC3(FUNC2(stimer)->vcpu_id,
				       stimer->index, config, host);

	FUNC0(stimer);
	if (old_config.enable &&
	    !new_config.direct_mode && new_config.sintx == 0)
		new_config.enable = 0;
	stimer->config.as_uint64 = new_config.as_uint64;

	if (stimer->config.enable)
		FUNC1(stimer, false);

	return 0;
}