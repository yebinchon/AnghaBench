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
struct kvm_s390_vm_tod_clock {scalar_t__ tod; scalar_t__ epoch_idx; } ;
struct kvm_s390_tod_clock_ext {scalar_t__ tod; scalar_t__ epoch_idx; } ;
struct TYPE_2__ {scalar_t__ epoch; scalar_t__ epdx; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct kvm*,int) ; 

__attribute__((used)) static void FUNC4(struct kvm *kvm,
				   struct kvm_s390_vm_tod_clock *gtod)
{
	struct kvm_s390_tod_clock_ext htod;

	FUNC1();

	FUNC0((char *)&htod);

	gtod->tod = htod.tod + kvm->arch.epoch;
	gtod->epoch_idx = 0;
	if (FUNC3(kvm, 139)) {
		gtod->epoch_idx = htod.epoch_idx + kvm->arch.epdx;
		if (gtod->tod < htod.tod)
			gtod->epoch_idx += 1;
	}

	FUNC2();
}