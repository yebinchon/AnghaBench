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
struct ssif_info {unsigned int max_xmit_msg_size; unsigned int data_len; scalar_t__ data; int /*<<< orphan*/  retries_left; } ;

/* Variables and functions */
 int E2BIG ; 
 unsigned int IPMI_MAX_MSG_LENGTH ; 
 int /*<<< orphan*/  SSIF_SEND_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned char*,unsigned int) ; 
 int FUNC1 (struct ssif_info*) ; 

__attribute__((used)) static int FUNC2(struct ssif_info *ssif_info,
		      unsigned char   *data,
		      unsigned int    len)
{
	if (len > IPMI_MAX_MSG_LENGTH)
		return -E2BIG;
	if (len > ssif_info->max_xmit_msg_size)
		return -E2BIG;

	ssif_info->retries_left = SSIF_SEND_RETRIES;
	FUNC0(ssif_info->data + 1, data, len);
	ssif_info->data_len = len;
	return FUNC1(ssif_info);
}