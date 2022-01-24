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
 int /*<<< orphan*/  acpi_sci_irq ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kacpi_notify_wq ; 
 int /*<<< orphan*/  kacpid_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	/*
	 * Make sure the GPE handler or the fixed event handler is not used
	 * on another CPU after removal.
	 */
	if (FUNC0())
		FUNC2(acpi_sci_irq);
	FUNC1(kacpid_wq);
	FUNC1(kacpi_notify_wq);
}