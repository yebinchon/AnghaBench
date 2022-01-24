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
typedef  size_t u8 ;
struct ftide010 {scalar_t__ base; int /*<<< orphan*/  dev; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {size_t pio_mode; } ;
struct TYPE_2__ {struct ftide010* private_data; } ;

/* Variables and functions */
 scalar_t__ FTIDE010_PIO_TIMING ; 
 size_t XFER_PIO_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int* pio_active_time ; 
 int* pio_recovery_time ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, struct ata_device *adev)
{
	struct ftide010 *ftide = ap->host->private_data;
	u8 pio = adev->pio_mode - XFER_PIO_0;

	FUNC0(ftide->dev, "set PIO mode %02x, index %d\n",
		adev->pio_mode, pio);
	FUNC1(pio_active_time[pio] << 4 | pio_recovery_time[pio],
	       ftide->base + FTIDE010_PIO_TIMING);
}