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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_ec {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_INTERRUPT_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC3(acpi_handle gpe_device,
	u32 gpe_number, void *data)
{
	unsigned long flags;
	struct acpi_ec *ec = data;

	FUNC1(&ec->lock, flags);
	FUNC0(ec);
	FUNC2(&ec->lock, flags);
	return ACPI_INTERRUPT_HANDLED;
}