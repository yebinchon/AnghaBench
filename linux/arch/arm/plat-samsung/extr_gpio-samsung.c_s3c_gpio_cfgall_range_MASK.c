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
typedef  int /*<<< orphan*/  samsung_gpio_pull_t ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC2(unsigned int start, unsigned int nr,
			  unsigned int cfg, samsung_gpio_pull_t pull)
{
	int ret;

	for (; nr > 0; nr--, start++) {
		FUNC1(start, pull);
		ret = FUNC0(start, cfg);
		if (ret != 0)
			return ret;
	}

	return 0;
}