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
struct ata_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  zpodd_wake_dev ; 

__attribute__((used)) static void FUNC2(struct ata_device *dev)
{
	acpi_handle handle = FUNC1(dev);
	FUNC0(handle, ACPI_SYSTEM_NOTIFY, zpodd_wake_dev);
}