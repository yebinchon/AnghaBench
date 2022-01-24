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
struct ssif_info {scalar_t__ i2c_read_write; int /*<<< orphan*/ * i2c_data; int /*<<< orphan*/  (* done_handler ) (struct ssif_info*,int,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  i2c_command; int /*<<< orphan*/  client; int /*<<< orphan*/  wake_thread; scalar_t__ stopping; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ I2C_SMBUS_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ssif_info*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ssif_info*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ssif_info*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *data)
{
	struct ssif_info *ssif_info = data;

	while (!FUNC3()) {
		int result;

		/* Wait for something to do */
		result = FUNC7(
						&ssif_info->wake_thread);
		if (ssif_info->stopping)
			break;
		if (result == -ERESTARTSYS)
			continue;
		FUNC2(&ssif_info->wake_thread);

		if (ssif_info->i2c_read_write == I2C_SMBUS_WRITE) {
			result = FUNC1(
				ssif_info->client, ssif_info->i2c_command,
				ssif_info->i2c_data[0],
				ssif_info->i2c_data + 1);
			ssif_info->done_handler(ssif_info, result, NULL, 0);
		} else {
			result = FUNC0(
				ssif_info->client, ssif_info->i2c_command,
				ssif_info->i2c_data);
			if (result < 0)
				ssif_info->done_handler(ssif_info, result,
							NULL, 0);
			else
				ssif_info->done_handler(ssif_info, 0,
							ssif_info->i2c_data,
							result);
		}
	}

	return 0;
}