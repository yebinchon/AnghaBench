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
typedef  int /*<<< orphan*/  vid_did_rid_value ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  TPM_DATA_FIFO_W ; 
 int /*<<< orphan*/  TPM_VID_DID_RID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC2 (scalar_t__*,int const*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u32 *res)
{
	static const u8 vid_did_rid_value[] = { 0x50, 0x10, 0xfe };
	u32 temp;
	s32 rc;

	if (!FUNC0(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;
	rc = FUNC1(client, TPM_VID_DID_RID, 4, (u8 *)&temp);
	if (rc < 0)
		return rc;

	/* check WPCT301 values - ignore RID */
	if (FUNC2(&temp, vid_did_rid_value, sizeof(vid_did_rid_value))) {
		/*
		 * f/w rev 2.81 has an issue where the VID_DID_RID is not
		 * reporting the right value. so give it another chance at
		 * offset 0x20 (FIFO_W).
		 */
		rc = FUNC1(client, TPM_DATA_FIFO_W, 4,
					  (u8 *) (&temp));
		if (rc < 0)
			return rc;

		/* check WPCT301 values - ignore RID */
		if (FUNC2(&temp, vid_did_rid_value,
			   sizeof(vid_did_rid_value)))
			return -ENODEV;
	}

	*res = temp;
	return 0;
}