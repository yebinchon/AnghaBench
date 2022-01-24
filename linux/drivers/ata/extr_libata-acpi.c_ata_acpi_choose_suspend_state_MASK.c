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
struct ata_device {scalar_t__ class; int /*<<< orphan*/  tdev; } ;

/* Variables and functions */
 int ACPI_STATE_D3_COLD ; 
 int ACPI_STATE_D3_HOT ; 
 scalar_t__ ATA_DEV_ATAPI ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct ata_device*) ; 
 scalar_t__ FUNC2 (struct ata_device*) ; 

__attribute__((used)) static int FUNC3(struct ata_device *dev, bool runtime)
{
	int d_max_in = ACPI_STATE_D3_COLD;
	if (!runtime)
		goto out;

	/*
	 * For ATAPI, runtime D3 cold is only allowed
	 * for ZPODD in zero power ready state
	 */
	if (dev->class == ATA_DEV_ATAPI &&
	    !(FUNC1(dev) && FUNC2(dev)))
		d_max_in = ACPI_STATE_D3_HOT;

out:
	return FUNC0(&dev->tdev, NULL, d_max_in);
}