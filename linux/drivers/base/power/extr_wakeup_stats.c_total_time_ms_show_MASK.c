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
struct wakeup_source {int /*<<< orphan*/  last_time; scalar_t__ active; int /*<<< orphan*/  total_time; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 struct wakeup_source* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	struct wakeup_source *ws = FUNC0(dev);
	ktime_t active_time;
	ktime_t total_time = ws->total_time;

	if (ws->active) {
		active_time = FUNC3(FUNC2(), ws->last_time);
		total_time = FUNC1(total_time, active_time);
	}
	return FUNC5(buf, "%lld\n", FUNC4(total_time));
}