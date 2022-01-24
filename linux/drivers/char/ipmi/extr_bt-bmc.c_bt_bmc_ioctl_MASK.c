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
struct file {int dummy; } ;
struct bt_bmc {int dummy; } ;

/* Variables and functions */
#define  BT_BMC_IOCTL_SMS_ATN 128 
 long EINVAL ; 
 struct bt_bmc* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct bt_bmc*) ; 

__attribute__((used)) static long FUNC2(struct file *file, unsigned int cmd,
			 unsigned long param)
{
	struct bt_bmc *bt_bmc = FUNC0(file);

	switch (cmd) {
	case BT_BMC_IOCTL_SMS_ATN:
		FUNC1(bt_bmc);
		return 0;
	}
	return -EINVAL;
}