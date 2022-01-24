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
struct TYPE_5__ {int /*<<< orphan*/  on_user_return; } ;
struct kvm_shared_msrs {int registered; TYPE_2__ urn; TYPE_1__* values; } ;
struct TYPE_6__ {int /*<<< orphan*/ * msrs; } ;
struct TYPE_4__ {int curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  kvm_on_user_return ; 
 struct kvm_shared_msrs* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  shared_msrs ; 
 TYPE_3__ shared_msrs_global ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(unsigned slot, u64 value, u64 mask)
{
	unsigned int cpu = FUNC1();
	struct kvm_shared_msrs *smsr = FUNC0(shared_msrs, cpu);
	int err;

	if (((value ^ smsr->values[slot].curr) & mask) == 0)
		return 0;
	smsr->values[slot].curr = value;
	err = FUNC3(shared_msrs_global.msrs[slot], value);
	if (err)
		return 1;

	if (!smsr->registered) {
		smsr->urn.on_user_return = kvm_on_user_return;
		FUNC2(&smsr->urn);
		smsr->registered = true;
	}
	return 0;
}