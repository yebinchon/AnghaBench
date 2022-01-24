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
struct kcs_bmc {int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
#define  IPMI_BMC_IOCTL_CLEAR_SMS_ATN 130 
#define  IPMI_BMC_IOCTL_FORCE_ABORT 129 
#define  IPMI_BMC_IOCTL_SET_SMS_ATN 128 
 int /*<<< orphan*/  KCS_STATUS_SMS_ATN ; 
 int /*<<< orphan*/  FUNC0 (struct kcs_bmc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct kcs_bmc* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct kcs_bmc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC5(struct file *filp, unsigned int cmd,
			  unsigned long arg)
{
	struct kcs_bmc *kcs_bmc = FUNC3(filp);
	long ret = 0;

	FUNC1(&kcs_bmc->lock);

	switch (cmd) {
	case IPMI_BMC_IOCTL_SET_SMS_ATN:
		FUNC4(kcs_bmc, KCS_STATUS_SMS_ATN,
				   KCS_STATUS_SMS_ATN);
		break;

	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
		FUNC4(kcs_bmc, KCS_STATUS_SMS_ATN,
				   0);
		break;

	case IPMI_BMC_IOCTL_FORCE_ABORT:
		FUNC0(kcs_bmc);
		break;

	default:
		ret = -EINVAL;
		break;
	}

	FUNC2(&kcs_bmc->lock);

	return ret;
}