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
typedef  int u8 ;
struct kcs_bmc {int /*<<< orphan*/  lock; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int ENODATA ; 
 int KCS_STATUS_CMD_DAT ; 
 int KCS_STATUS_IBF ; 
 int /*<<< orphan*/  FUNC0 (struct kcs_bmc*) ; 
 int /*<<< orphan*/  FUNC1 (struct kcs_bmc*) ; 
 int /*<<< orphan*/  FUNC2 (struct kcs_bmc*) ; 
 int FUNC3 (struct kcs_bmc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct kcs_bmc *kcs_bmc)
{
	unsigned long flags;
	int ret = -ENODATA;
	u8 status;

	FUNC4(&kcs_bmc->lock, flags);

	status = FUNC3(kcs_bmc);
	if (status & KCS_STATUS_IBF) {
		if (!kcs_bmc->running)
			FUNC2(kcs_bmc);
		else if (status & KCS_STATUS_CMD_DAT)
			FUNC0(kcs_bmc);
		else
			FUNC1(kcs_bmc);

		ret = 0;
	}

	FUNC5(&kcs_bmc->lock, flags);

	return ret;
}