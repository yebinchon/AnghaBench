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
 int /*<<< orphan*/  DNS323_GPIO_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC2("DNS-323: Triggering power-off...\n");
	/* Pin has to be changed to 1 and back to 0 to do actual power off. */
	FUNC0(DNS323_GPIO_POWER_OFF, 1);
	FUNC1(100);
	FUNC0(DNS323_GPIO_POWER_OFF, 0);
}