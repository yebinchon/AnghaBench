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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ TPM_I2C_BUS_DELAY ; 
 scalar_t__ TPM_I2C_DELAY_RANGE ; 
 int TPM_I2C_RETRY_COUNT ; 
 int /*<<< orphan*/  TPM_STS ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static s32 FUNC2(struct i2c_client *client, u8 data)
{
	s32 status;
	int i;

	/* this causes the current command to be aborted */
	for (i = 0, status = -1; i < TPM_I2C_RETRY_COUNT && status < 0; i++) {
		status = FUNC0(client, TPM_STS, 1, &data);
		if (status < 0)
			FUNC1(TPM_I2C_BUS_DELAY, TPM_I2C_BUS_DELAY
				     + TPM_I2C_DELAY_RANGE);
	}
	return status;
}