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
 int /*<<< orphan*/  cfag12864b_mutex ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int cfag12864b_updating ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

unsigned char FUNC3(void)
{
	unsigned char ret;

	FUNC1(&cfag12864b_mutex);

	if (!cfag12864b_updating) {
		cfag12864b_updating = 1;
		FUNC0();
		ret = 0;
	} else
		ret = 1;

	FUNC2(&cfag12864b_mutex);

	return ret;
}