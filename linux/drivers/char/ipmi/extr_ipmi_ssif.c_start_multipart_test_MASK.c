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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE ; 
 int /*<<< orphan*/  SSIF_IPMI_MULTI_PART_REQUEST_START ; 
 int SSIF_SEND_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
				unsigned char *msg, bool do_middle)
{
	int retry_cnt = SSIF_SEND_RETRIES, ret;

retry_write:
	ret = FUNC1(client,
					 SSIF_IPMI_MULTI_PART_REQUEST_START,
					 32, msg);
	if (ret) {
		retry_cnt--;
		if (retry_cnt > 0)
			goto retry_write;
		FUNC0(&client->dev, "Could not write multi-part start, though the BMC said it could handle it.  Just limit sends to one part.\n");
		return ret;
	}

	if (!do_middle)
		return 0;

	ret = FUNC1(client,
					 SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE,
					 32, msg + 32);
	if (ret) {
		FUNC0(&client->dev, "Could not write multi-part middle, though the BMC said it could handle it.  Just limit sends to one part.\n");
		return ret;
	}

	return 0;
}