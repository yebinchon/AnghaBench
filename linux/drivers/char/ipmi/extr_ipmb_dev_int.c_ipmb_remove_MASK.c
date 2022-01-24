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
struct ipmb_dev {int /*<<< orphan*/  miscdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct ipmb_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct ipmb_dev *ipmb_dev = FUNC0(client);

	FUNC1(client);
	FUNC2(&ipmb_dev->miscdev);

	return 0;
}