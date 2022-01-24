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
struct wakeup_source {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 struct device* FUNC2 (struct device*,struct wakeup_source*) ; 

int FUNC3(struct device *parent, struct wakeup_source *ws)
{
	struct device *dev;

	dev = FUNC2(parent, ws);
	if (FUNC0(dev))
		return FUNC1(dev);
	ws->dev = dev;

	return 0;
}