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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,scalar_t__,scalar_t__ const) ; 
 int FUNC2 (void*,scalar_t__ const) ; 

__attribute__((used)) static int FUNC3(void *context,
					 const void *reg, size_t reg_size,
					 const void *val, size_t val_size)
{
	const u8 *data = val;
	u8 addr = *(u8 *)reg;
	int err = 0;

	FUNC0(reg_size != 1);

	/*
	 * SPMI defines a more bandwidth-efficient 'Register 0 Write' sequence,
	 * use it when possible.
	 */
	if (addr == 0 && val_size) {
		err = FUNC2(context, *data);
		if (err)
			goto err_out;

		data++;
		addr++;
		val_size--;
	}

	while (val_size) {
		err = FUNC1(context, addr, *data);
		if (err)
			goto err_out;

		data++;
		addr++;
		val_size--;
	}

err_out:
	return err;
}