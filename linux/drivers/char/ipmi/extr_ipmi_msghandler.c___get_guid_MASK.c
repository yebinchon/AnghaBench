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
struct ipmi_smi {int /*<<< orphan*/ * null_user_handler; int /*<<< orphan*/  waitq; struct bmc_device* bmc; } ;
struct bmc_device {int dyn_guid_set; } ;

/* Variables and functions */
 int /*<<< orphan*/ * guid_handler ; 
 int FUNC0 (struct ipmi_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ipmi_smi *intf)
{
	int rv;
	struct bmc_device *bmc = intf->bmc;

	bmc->dyn_guid_set = 2;
	intf->null_user_handler = guid_handler;
	rv = FUNC0(intf, 0);
	if (rv)
		/* Send failed, no GUID available. */
		bmc->dyn_guid_set = 0;

	FUNC2(intf->waitq, bmc->dyn_guid_set != 2);

	/* dyn_guid_set makes the guid data available. */
	FUNC1();

	intf->null_user_handler = NULL;
}