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
typedef  int /*<<< orphan*/  ulong ;

/* Variables and functions */
 int ATA_SECTORWORDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * disk_present ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int) ; 

void FUNC7(int device, ulong *sect_buf, int words)
{
	/* Only permit accesses to disks found to be present during ide_preinit() */
	if (!disk_present[device]) {
		return;
	}

	/* Select the required internal SATA drive */
	FUNC0(device);

	/* Start the DMA channel receiving data from the SATA core into the passed buffer */
	FUNC1(sect_buf, words << 2);

	/* Sata core should finish before DMA */
	if (FUNC6(device, 30)) {
		FUNC2("Timed out of wait for SATA device %d to have BUSY clear\n",
			device);
	}
	if (!FUNC5(device)) {
		FUNC2("oxnas_sata_output_data() Wait for ATA no-error timed-out\n");
	}

	/* Wait for DMA to finish */
	if (!FUNC4(device)) {
		FUNC2("Timed out of wait for DMA channel for SATA device %d to have in-progress clear\n",
			device);
	}

	if (words == ATA_SECTORWORDS)
		FUNC3(device, sect_buf + words - 2);
}