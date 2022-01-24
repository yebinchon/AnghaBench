#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipmi_smi {int /*<<< orphan*/  waitq; int /*<<< orphan*/  si_dev; struct bmc_device* bmc; } ;
struct TYPE_4__ {scalar_t__ netfn; scalar_t__ cmd; scalar_t__* data; scalar_t__ data_len; } ;
struct TYPE_3__ {scalar_t__ addr_type; } ;
struct ipmi_recv_msg {TYPE_2__ msg; TYPE_1__ addr; } ;
struct bmc_device {int dyn_guid_set; int /*<<< orphan*/  fetch_guid; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 scalar_t__ IPMI_GET_DEVICE_GUID_CMD ; 
 scalar_t__ IPMI_NETFN_APP_RESPONSE ; 
 scalar_t__ IPMI_SYSTEM_INTERFACE_ADDR_TYPE ; 
 scalar_t__ UUID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
{
	struct bmc_device *bmc = intf->bmc;

	if ((msg->addr.addr_type != IPMI_SYSTEM_INTERFACE_ADDR_TYPE)
	    || (msg->msg.netfn != IPMI_NETFN_APP_RESPONSE)
	    || (msg->msg.cmd != IPMI_GET_DEVICE_GUID_CMD))
		/* Not for me */
		return;

	if (msg->msg.data[0] != 0) {
		/* Error from getting the GUID, the BMC doesn't have one. */
		bmc->dyn_guid_set = 0;
		goto out;
	}

	if (msg->msg.data_len < UUID_SIZE + 1) {
		bmc->dyn_guid_set = 0;
		FUNC0(intf->si_dev,
			 "The GUID response from the BMC was too short, it was %d but should have been %d.  Assuming GUID is not available.\n",
			 msg->msg.data_len, UUID_SIZE + 1);
		goto out;
	}

	FUNC1(&bmc->fetch_guid, (guid_t *)(msg->msg.data + 1));
	/*
	 * Make sure the guid data is available before setting
	 * dyn_guid_set.
	 */
	FUNC2();
	bmc->dyn_guid_set = 1;
 out:
	FUNC3(&intf->waitq);
}