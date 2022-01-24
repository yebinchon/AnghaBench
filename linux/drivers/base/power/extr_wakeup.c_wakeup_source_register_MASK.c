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
struct wakeup_source {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wakeup_source*) ; 
 struct wakeup_source* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wakeup_source*) ; 
 int FUNC4 (struct device*,struct wakeup_source*) ; 

struct wakeup_source *FUNC5(struct device *dev,
					     const char *name)
{
	struct wakeup_source *ws;
	int ret;

	ws = FUNC2(name);
	if (ws) {
		if (!dev || FUNC0(dev)) {
			ret = FUNC4(dev, ws);
			if (ret) {
				FUNC3(ws);
				return NULL;
			}
		}
		FUNC1(ws);
	}
	return ws;
}