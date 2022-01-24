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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SSIF_IPMI_RESPONSE ; 
 int /*<<< orphan*/  SSIF_MSG_MSEC ; 
 int SSIF_RECV_RETRIES ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, unsigned char *resp)
{
	int ret = -ENODEV, retry_cnt = SSIF_RECV_RETRIES;

	while (retry_cnt > 0) {
		ret = FUNC0(client, SSIF_IPMI_RESPONSE,
						resp);
		if (ret > 0)
			break;
		FUNC1(SSIF_MSG_MSEC);
		retry_cnt--;
		if (retry_cnt <= 0)
			break;
	}

	return ret;
}