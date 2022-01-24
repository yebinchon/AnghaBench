#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_vcpu_init {int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu_init*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct kvm_vcpu_init *init)
{
	int target = FUNC0();

	if (target < 0)
		return -ENODEV;

	FUNC1(init, 0, sizeof(*init));

	/*
	 * For now, we don't return any features.
	 * In future, we might use features to return target
	 * specific features available for the preferred
	 * target type.
	 */
	init->target = (__u32)target;

	return 0;
}