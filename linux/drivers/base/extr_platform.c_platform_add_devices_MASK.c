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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 

int FUNC2(struct platform_device **devs, int num)
{
	int i, ret = 0;

	for (i = 0; i < num; i++) {
		ret = FUNC0(devs[i]);
		if (ret) {
			while (--i >= 0)
				FUNC1(devs[i]);
			break;
		}
	}

	return ret;
}