#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {scalar_t__ probe_type; } ;

/* Variables and functions */
 scalar_t__ PROBE_PREFER_ASYNCHRONOUS ; 
 int /*<<< orphan*/  TEST_PROBE_DELAY ; 
 int /*<<< orphan*/  async_completed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  errors ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  warnings ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;

	/*
	 * Determine if we have hit the "timeout" limit for the test if we
	 * have then report it as an error, otherwise we wil sleep for the
	 * required amount of time and then report completion.
	 */
	if (FUNC1(&timeout)) {
		FUNC3(dev, "async probe took too long\n");
		FUNC0(&errors);
	} else {
		FUNC2(&pdev->dev, "sleeping for %d msecs in probe\n",
			 TEST_PROBE_DELAY);
		FUNC6(TEST_PROBE_DELAY);
		FUNC2(&pdev->dev, "done sleeping\n");
	}

	/*
	 * Report NUMA mismatch if device node is set and we are not
	 * performing an async init on that node.
	 */
	if (dev->driver->probe_type == PROBE_PREFER_ASYNCHRONOUS) {
		if (FUNC4(dev) != FUNC7()) {
			FUNC5(dev, "NUMA node mismatch %d != %d\n",
				 FUNC4(dev), FUNC7());
			FUNC0(&warnings);
		}

		FUNC0(&async_completed);
	}

	return 0;
}