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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * disk_present ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int) ; 

void FUNC7(int device, const ulong *sect_buf, int words)
{
	/* Only permit accesses to disks found to be present during ide_preinit() */
	if (!disk_present[device]) {
		return;
	}

	/* Select the required internal SATA drive */
	FUNC0(device);

	/* Start the DMA channel sending data from the passed buffer to the SATA core */
	FUNC1(sect_buf, words << 2);

	/* Don't know why we need this delay, but without it the wait for DMA not
	 busy times soemtimes out, e.g. when saving environment to second disk */
	FUNC3(1000);

	/* Wait for DMA to finish */
	if (!FUNC4(device)) {
		FUNC2("Timed out of wait for DMA channel for SATA device %d to have in-progress clear\n",
			device);
	}

	/* Sata core should finish after DMA */
	if (FUNC6(device, 30)) {
		FUNC2("Timed out of wait for SATA device %d to have BUSY clear\n",
			device);
	}
	if (!FUNC5(device)) {
		FUNC2("oxnas_sata_output_data() Wait for ATA no-error timed-out\n");
	}
}