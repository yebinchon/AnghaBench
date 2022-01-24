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
struct wakeup_source {scalar_t__ max_time; int /*<<< orphan*/  last_time; scalar_t__ active; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 struct wakeup_source* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct wakeup_source *ws = FUNC0(dev);
	ktime_t active_time;
	ktime_t max_time = ws->max_time;

	if (ws->active) {
		active_time = FUNC2(FUNC1(), ws->last_time);
		if (active_time > max_time)
			max_time = active_time;
	}
	return FUNC4(buf, "%lld\n", FUNC3(max_time));
}