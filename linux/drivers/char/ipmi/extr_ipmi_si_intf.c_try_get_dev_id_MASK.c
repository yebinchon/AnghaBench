#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smi_info {int /*<<< orphan*/  device_id; int /*<<< orphan*/  si_sm; TYPE_1__* handlers; } ;
struct TYPE_2__ {unsigned long (* get_result ) (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* start_transaction ) (int /*<<< orphan*/ ,unsigned char*,int) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned char IPMI_GET_DEVICE_ID_CMD ; 
 int /*<<< orphan*/  IPMI_MAX_MSG_LENGTH ; 
 int IPMI_NETFN_APP_REQUEST ; 
 int FUNC0 (unsigned char,unsigned char,unsigned char*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct smi_info*) ; 

__attribute__((used)) static int FUNC6(struct smi_info *smi_info)
{
	unsigned char         msg[2];
	unsigned char         *resp;
	unsigned long         resp_len;
	int                   rv = 0;

	resp = FUNC2(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
	if (!resp)
		return -ENOMEM;

	/*
	 * Do a Get Device ID command, since it comes back with some
	 * useful info.
	 */
	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
	msg[1] = IPMI_GET_DEVICE_ID_CMD;
	smi_info->handlers->start_transaction(smi_info->si_sm, msg, 2);

	rv = FUNC5(smi_info);
	if (rv)
		goto out;

	resp_len = smi_info->handlers->get_result(smi_info->si_sm,
						  resp, IPMI_MAX_MSG_LENGTH);

	/* Check and record info from the get device id, in case we need it. */
	rv = FUNC0(resp[0] >> 2, resp[1],
			resp + 2, resp_len - 2, &smi_info->device_id);

out:
	FUNC1(resp);
	return rv;
}