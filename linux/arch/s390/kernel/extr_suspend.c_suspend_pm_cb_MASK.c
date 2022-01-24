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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LC_ORDER ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
#define  PM_HIBERNATION_PREPARE 131 
#define  PM_POST_HIBERNATION 130 
#define  PM_POST_SUSPEND 129 
#define  PM_SUSPEND_PREPARE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  suspend_zero_pages ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb, unsigned long action,
			 void *ptr)
{
	switch (action) {
	case PM_SUSPEND_PREPARE:
	case PM_HIBERNATION_PREPARE:
		suspend_zero_pages = FUNC0(GFP_KERNEL, LC_ORDER);
		if (!suspend_zero_pages)
			return NOTIFY_BAD;
		break;
	case PM_POST_SUSPEND:
	case PM_POST_HIBERNATION:
		FUNC1(suspend_zero_pages, LC_ORDER);
		break;
	default:
		return NOTIFY_DONE;
	}
	return NOTIFY_OK;
}