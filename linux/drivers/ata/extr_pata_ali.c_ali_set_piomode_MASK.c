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
struct ata_timing {int dummy; } ;
struct ata_port {int dummy; } ;
struct ata_device {scalar_t__ class; scalar_t__ dma_mode; scalar_t__ pio_mode; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 int ATA_TIMING_8BIT ; 
 int ATA_TIMING_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,struct ata_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,struct ata_device*,struct ata_timing*,int /*<<< orphan*/ ) ; 
 struct ata_device* FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,scalar_t__,struct ata_timing*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_timing*,struct ata_timing*,struct ata_timing*,int) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap, struct ata_device *adev)
{
	struct ata_device *pair = FUNC2(adev);
	struct ata_timing t;
	unsigned long T =  1000000000 / 33333;	/* PCI clock based */

	FUNC3(adev, adev->pio_mode, &t, T, 1);
	if (pair) {
		struct ata_timing p;
		FUNC3(pair, pair->pio_mode, &p, T, 1);
		FUNC4(&p, &t, &t, ATA_TIMING_SETUP|ATA_TIMING_8BIT);
		if (pair->dma_mode) {
			FUNC3(pair, pair->dma_mode, &p, T, 1);
			FUNC4(&p, &t, &t, ATA_TIMING_SETUP|ATA_TIMING_8BIT);
		}
	}

	/* PIO FIFO is only permitted on ATA disk */
	if (adev->class != ATA_DEV_ATA)
		FUNC0(ap, adev, 0x00);
	FUNC1(ap, adev, &t, 0);
	if (adev->class == ATA_DEV_ATA)
		FUNC0(ap, adev, 0x05);

}