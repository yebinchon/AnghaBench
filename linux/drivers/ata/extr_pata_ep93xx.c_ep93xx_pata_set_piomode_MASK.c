#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ata_timing {int dummy; } ;
struct ep93xx_pata_data {int /*<<< orphan*/  ide_base; int /*<<< orphan*/  iordy; struct ata_timing t; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {scalar_t__ pio_mode; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;

/* Variables and functions */
 int ATA_TIMING_8BIT ; 
 int ATA_TIMING_SETUP ; 
 scalar_t__ XFER_PIO_0 ; 
 struct ata_device* FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,scalar_t__,struct ata_timing*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_timing*,struct ata_timing*,struct ata_timing*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap,
				    struct ata_device *adev)
{
	struct ep93xx_pata_data *drv_data = ap->host->private_data;
	struct ata_device *pair = FUNC0(adev);
	/*
	 * Calculate timings for the delay loop, assuming ep93xx cpu speed
	 * is 200MHz (maximum possible for ep93xx). If actual cpu speed is
	 * slower, we will wait a bit longer in each delay.
	 * Additional division of cpu speed by 5, because single iteration
	 * of our delay loop takes 5 cpu cycles (25ns).
	 */
	unsigned long T = 1000000 / (200 / 5);

	FUNC2(adev, adev->pio_mode, &drv_data->t, T, 0);
	if (pair && pair->pio_mode) {
		struct ata_timing t;
		FUNC2(pair, pair->pio_mode, &t, T, 0);
		FUNC3(&t, &drv_data->t, &drv_data->t,
			ATA_TIMING_SETUP | ATA_TIMING_8BIT);
	}
	drv_data->iordy = FUNC1(adev);

	FUNC4(drv_data->ide_base,
			       adev->pio_mode - XFER_PIO_0);
}