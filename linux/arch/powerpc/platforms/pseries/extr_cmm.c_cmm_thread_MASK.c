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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int delay ; 
 int hotplug_delay ; 
 int /*<<< orphan*/  hotplug_mutex ; 
 scalar_t__ hotplug_occurred ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ loaned_pages ; 
 scalar_t__ loaned_pages_target ; 
 unsigned long FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *dummy)
{
	unsigned long timeleft;

	while (1) {
		timeleft = FUNC5(delay * 1000);

		if (FUNC4() || timeleft)
			break;

		if (FUNC6(&hotplug_mutex)) {
			if (hotplug_occurred) {
				hotplug_occurred = 0;
				FUNC7(&hotplug_mutex);
				FUNC1("Hotplug operation has occurred, "
						"loaning activity suspended "
						"for %d seconds.\n",
						hotplug_delay);
				timeleft = FUNC5(hotplug_delay *
						1000);
				if (FUNC4() || timeleft)
					break;
				continue;
			}
			FUNC7(&hotplug_mutex);
		} else {
			FUNC1("Hotplug operation in progress, activity "
					"suspended\n");
			continue;
		}

		FUNC3();

		if (loaned_pages_target > loaned_pages) {
			if (FUNC0(loaned_pages_target - loaned_pages))
				loaned_pages_target = loaned_pages;
		} else if (loaned_pages_target < loaned_pages)
			FUNC2(loaned_pages - loaned_pages_target);
	}
	return 0;
}