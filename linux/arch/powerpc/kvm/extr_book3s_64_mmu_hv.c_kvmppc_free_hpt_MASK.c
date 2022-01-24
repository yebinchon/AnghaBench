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
struct kvm_hpt_info {int order; scalar_t__ virt; scalar_t__ cma; int /*<<< orphan*/ * rev; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct kvm_hpt_info *info)
{
	FUNC2(info->rev);
	info->rev = NULL;
	if (info->cma)
		FUNC1(FUNC3(info->virt),
				 1 << (info->order - PAGE_SHIFT));
	else if (info->virt)
		FUNC0(info->virt, info->order - PAGE_SHIFT);
	info->virt = 0;
	info->order = 0;
}