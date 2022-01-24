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
typedef  void* u32 ;
struct device_node {int dummy; } ;
struct clk_range {void* max; void* min; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,char const*,int,void**) ; 

int FUNC1(struct device_node *np, const char *propname,
			  struct clk_range *range)
{
	u32 min, max;
	int ret;

	ret = FUNC0(np, propname, 0, &min);
	if (ret)
		return ret;

	ret = FUNC0(np, propname, 1, &max);
	if (ret)
		return ret;

	if (range) {
		range->min = min;
		range->max = max;
	}

	return 0;
}