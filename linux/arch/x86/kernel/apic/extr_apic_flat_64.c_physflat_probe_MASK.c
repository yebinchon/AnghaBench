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
 int /*<<< orphan*/ * apic ; 
 int /*<<< orphan*/  apic_physflat ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int FUNC2(void)
{
	if (apic == &apic_physflat || FUNC1() > 8 ||
	    FUNC0())
		return 1;

	return 0;
}