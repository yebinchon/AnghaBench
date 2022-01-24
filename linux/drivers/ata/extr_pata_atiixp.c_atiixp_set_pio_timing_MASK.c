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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIIXP_IDE_PIO_MODE ; 
 int /*<<< orphan*/  ATIIXP_IDE_PIO_TIMING ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap, struct ata_device *adev, int pio)
{
	static u8 pio_timings[5] = { 0x5D, 0x47, 0x34, 0x22, 0x20 };

	struct pci_dev *pdev = FUNC4(ap->host->dev);
	int dn = 2 * ap->port_no + adev->devno;
	int timing_shift = (16 * ap->port_no) + 8 * (adev->devno ^ 1);
	u32 pio_timing_data;
	u16 pio_mode_data;

	FUNC1(pdev, ATIIXP_IDE_PIO_MODE, &pio_mode_data);
	pio_mode_data &= ~(0x7 << (4 * dn));
	pio_mode_data |= pio << (4 * dn);
	FUNC3(pdev, ATIIXP_IDE_PIO_MODE, pio_mode_data);

	FUNC0(pdev, ATIIXP_IDE_PIO_TIMING, &pio_timing_data);
	pio_timing_data &= ~(0xFF << timing_shift);
	pio_timing_data |= (pio_timings[pio] << timing_shift);
	FUNC2(pdev, ATIIXP_IDE_PIO_TIMING, pio_timing_data);
}