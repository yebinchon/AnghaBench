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
typedef  int u8 ;
struct ata_port {int dummy; } ;
struct ata_device {int pio_mode; int devno; } ;

/* Variables and functions */
 int XFER_PIO_0 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap, struct ata_device *adev)
{
	int tries = 5;
	int pio = adev->pio_mode - XFER_PIO_0;
	u8 rt;
	unsigned long flags;

	/* Safe as UP only. Force I/Os to occur together */

	FUNC2(flags);

	/* Unlock the control interface */
	do {
		FUNC0(0x1F5);
		FUNC3(FUNC0(0x1F2) | 0x80, 0x1F2);
		FUNC0(0x1F2);
		FUNC0(0x3F6);
		FUNC0(0x3F6);
		FUNC0(0x1F2);
		FUNC0(0x1F2);
	}
	while ((FUNC0(0x1F2) & 0x80) && --tries);

	FUNC1(flags);

	FUNC3(FUNC0(0x1F4) & 0x07, 0x1F4);

	rt = FUNC0(0x1F3);
	rt &= 0x07 << (3 * adev->devno);
	if (pio)
		rt |= (1 + 3 * pio) << (3 * adev->devno);

	FUNC4(100);
	FUNC3(FUNC0(0x1F2) | 0x01, 0x1F2);
	FUNC4(100);
	FUNC0(0x1F5);

}