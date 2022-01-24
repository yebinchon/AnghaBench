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
 int EINVAL ; 
 int FUNC0 (char const*,int,int*) ; 

__attribute__((used)) static int FUNC1(const char *str, int *val, int min, int max)
{
	int ret, new_val;

	ret = FUNC0(str, 10, &new_val);
	if (ret)
		return -EINVAL;

	if (new_val < min || new_val > max)
		return -EINVAL;

	*val = new_val;
	return 0;
}