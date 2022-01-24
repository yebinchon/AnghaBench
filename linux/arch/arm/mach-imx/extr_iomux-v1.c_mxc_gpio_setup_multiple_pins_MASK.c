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

/* Variables and functions */
 int FUNC0 (int const*,unsigned int) ; 

int FUNC1(const int *pin_list, unsigned count,
		const char *label)
{
	int ret;

	ret = FUNC0(pin_list, count);
	return ret;
}