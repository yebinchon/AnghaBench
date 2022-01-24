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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_driver* const) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct platform_driver* const) ; 

void FUNC2(struct platform_driver * const *drivers,
				 unsigned int count)
{
	while (count--) {
		FUNC1("unregistering platform driver %ps\n", drivers[count]);
		FUNC0(drivers[count]);
	}
}