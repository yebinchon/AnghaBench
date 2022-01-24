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
#define  DIE_DABR_MATCH 129 
#define  DIE_SSTEP 128 
 int NOTIFY_DONE ; 
 int FUNC0 (void*) ; 
 int FUNC1 (void*) ; 

int FUNC2(
		struct notifier_block *unused, unsigned long val, void *data)
{
	int ret = NOTIFY_DONE;

	switch (val) {
	case DIE_DABR_MATCH:
		ret = FUNC0(data);
		break;
	case DIE_SSTEP:
		ret = FUNC1(data);
		break;
	}

	return ret;
}