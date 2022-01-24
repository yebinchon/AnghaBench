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
typedef  unsigned char u8 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct smi_info {TYPE_2__ io; int /*<<< orphan*/  si_sm; TYPE_1__* handlers; } ;
struct TYPE_3__ {unsigned long (* get_result ) (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* start_transaction ) (int /*<<< orphan*/ ,unsigned char*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned char IPMI_GET_BMC_GLOBAL_ENABLES_CMD ; 
 int /*<<< orphan*/  IPMI_MAX_MSG_LENGTH ; 
 int IPMI_NETFN_APP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct smi_info*) ; 

__attribute__((used)) static int FUNC6(struct smi_info *smi_info, u8 *enables)
{
	unsigned char         msg[3];
	unsigned char         *resp;
	unsigned long         resp_len;
	int                   rv;

	resp = FUNC2(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
	if (!resp)
		return -ENOMEM;

	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
	msg[1] = IPMI_GET_BMC_GLOBAL_ENABLES_CMD;
	smi_info->handlers->start_transaction(smi_info->si_sm, msg, 2);

	rv = FUNC5(smi_info);
	if (rv) {
		FUNC0(smi_info->io.dev,
			 "Error getting response from get global enables command: %d\n",
			 rv);
		goto out;
	}

	resp_len = smi_info->handlers->get_result(smi_info->si_sm,
						  resp, IPMI_MAX_MSG_LENGTH);

	if (resp_len < 4 ||
			resp[0] != (IPMI_NETFN_APP_REQUEST | 1) << 2 ||
			resp[1] != IPMI_GET_BMC_GLOBAL_ENABLES_CMD   ||
			resp[2] != 0) {
		FUNC0(smi_info->io.dev,
			 "Invalid return from get global enables command: %ld %x %x %x\n",
			 resp_len, resp[0], resp[1], resp[2]);
		rv = -EINVAL;
		goto out;
	} else {
		*enables = resp[3];
	}

out:
	FUNC1(resp);
	return rv;
}