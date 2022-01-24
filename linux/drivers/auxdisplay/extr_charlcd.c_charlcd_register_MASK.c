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
struct charlcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  charlcd_dev ; 
 int FUNC0 (struct charlcd*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panel_notifier ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct charlcd* the_charlcd ; 

int FUNC3(struct charlcd *lcd)
{
	int ret;

	ret = FUNC0(lcd);
	if (ret)
		return ret;

	ret = FUNC1(&charlcd_dev);
	if (ret)
		return ret;

	the_charlcd = lcd;
	FUNC2(&panel_notifier);
	return 0;
}