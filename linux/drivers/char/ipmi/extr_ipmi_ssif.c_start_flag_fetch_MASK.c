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
struct ssif_info {int req_flags; int /*<<< orphan*/  ssif_state; } ;

/* Variables and functions */
 unsigned char IPMI_GET_MSG_FLAGS_CMD ; 
 int IPMI_NETFN_APP_REQUEST ; 
 int /*<<< orphan*/  SSIF_GETTING_FLAGS ; 
 int /*<<< orphan*/  SSIF_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct ssif_info*,unsigned long*) ; 
 scalar_t__ FUNC1 (struct ssif_info*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(struct ssif_info *ssif_info, unsigned long *flags)
{
	unsigned char mb[2];

	ssif_info->req_flags = false;
	ssif_info->ssif_state = SSIF_GETTING_FLAGS;
	FUNC0(ssif_info, flags);

	mb[0] = (IPMI_NETFN_APP_REQUEST << 2);
	mb[1] = IPMI_GET_MSG_FLAGS_CMD;
	if (FUNC1(ssif_info, mb, 2) != 0)
		ssif_info->ssif_state = SSIF_NORMAL;
}