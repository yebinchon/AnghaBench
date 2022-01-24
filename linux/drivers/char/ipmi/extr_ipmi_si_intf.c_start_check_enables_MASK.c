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
struct smi_info {int /*<<< orphan*/  si_state; } ;

/* Variables and functions */
 unsigned char IPMI_GET_BMC_GLOBAL_ENABLES_CMD ; 
 int IPMI_NETFN_APP_REQUEST ; 
 int /*<<< orphan*/  SI_CHECKING_ENABLES ; 
 int /*<<< orphan*/  FUNC0 (struct smi_info*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC1(struct smi_info *smi_info)
{
	unsigned char msg[2];

	msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
	msg[1] = IPMI_GET_BMC_GLOBAL_ENABLES_CMD;

	FUNC0(smi_info, msg, 2);
	smi_info->si_state = SI_CHECKING_ENABLES;
}