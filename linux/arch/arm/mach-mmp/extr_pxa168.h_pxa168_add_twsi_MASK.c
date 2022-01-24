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
struct pxa_device_desc {int dummy; } ;
struct i2c_pxa_platform_data {int dummy; } ;
struct i2c_board_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,struct i2c_board_info*,unsigned int) ; 
 struct pxa_device_desc pxa168_device_twsi0 ; 
 struct pxa_device_desc pxa168_device_twsi1 ; 
 int FUNC1 (struct pxa_device_desc*,struct i2c_pxa_platform_data*,int) ; 

__attribute__((used)) static inline int FUNC2(int id, struct i2c_pxa_platform_data *data,
				  struct i2c_board_info *info, unsigned size)
{
	struct pxa_device_desc *d = NULL;
	int ret;

	switch (id) {
	case 0: d = &pxa168_device_twsi0; break;
	case 1: d = &pxa168_device_twsi1; break;
	default:
		return -EINVAL;
	}

	ret = FUNC0(id, info, size);
	if (ret)
		return ret;

	return FUNC1(d, data, sizeof(*data));
}