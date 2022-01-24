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
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,size_t,void*) ; 
 struct i2c_client* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(void *context, const void *reg,
				     size_t reg_size, void *val,
				     size_t val_size)
{
	struct device *dev = context;
	struct i2c_client *i2c = FUNC1(dev);
	int ret;

	if (reg_size != 1 || val_size < 1)
		return -EINVAL;

	ret = FUNC0(i2c, ((u8 *)reg)[0], val_size, val);
	if (ret == val_size)
		return 0;
	else if (ret < 0)
		return ret;
	else
		return -EIO;
}