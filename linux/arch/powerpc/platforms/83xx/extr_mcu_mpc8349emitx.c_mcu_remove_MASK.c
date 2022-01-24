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
struct mcu {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mcu* glob_mcu ; 
 struct mcu* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mcu*) ; 
 int /*<<< orphan*/ * pm_power_off ; 
 int /*<<< orphan*/  shutdown_thread ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct mcu *mcu = FUNC1(client);
	int ret;

	FUNC3(shutdown_thread);

	FUNC0(&client->dev, &dev_attr_status);

	if (glob_mcu == mcu) {
		pm_power_off = NULL;
		glob_mcu = NULL;
	}

	ret = FUNC4(mcu);
	if (ret)
		return ret;
	FUNC2(mcu);
	return 0;
}