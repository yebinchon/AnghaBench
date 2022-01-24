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
struct platform_driver {int dummy; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct platform_driver* const,struct module*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_driver* const) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct platform_driver* const) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct platform_driver* const,int) ; 

int FUNC4(struct platform_driver * const *drivers,
				unsigned int count, struct module *owner)
{
	unsigned int i;
	int err;

	for (i = 0; i < count; i++) {
		FUNC2("registering platform driver %ps\n", drivers[i]);

		err = FUNC0(drivers[i], owner);
		if (err < 0) {
			FUNC3("failed to register platform driver %ps: %d\n",
			       drivers[i], err);
			goto error;
		}
	}

	return 0;

error:
	while (i--) {
		FUNC2("unregistering platform driver %ps\n", drivers[i]);
		FUNC1(drivers[i]);
	}

	return err;
}