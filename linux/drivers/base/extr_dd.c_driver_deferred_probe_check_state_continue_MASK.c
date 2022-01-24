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
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int FUNC0 (struct device*) ; 

int FUNC1(struct device *dev)
{
	int ret;

	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	return -EPROBE_DEFER;
}