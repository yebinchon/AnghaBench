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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ata_timing {size_t active; size_t setup; size_t recover; } ;
struct ata_port {int port_no; struct ata_device* private_data; TYPE_1__* host; } ;
struct ata_device {int /*<<< orphan*/  pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ata_device*) ; 
 scalar_t__ FUNC1 (struct ata_device*,int /*<<< orphan*/ ,struct ata_timing*,int,int) ; 
 void* FUNC2 (size_t,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev = FUNC6(ap->host->dev);
	int port = 0x40 + 4 * ap->port_no;
	u8 idetcr, idefr;
	struct ata_timing at;

	static const u8 activebits[15] = {
		0, 1, 2, 3, 4,
		5, 5, 6, 6, 6,
		6, 7, 7, 7, 7
	};

	static const u8 recoverbits[12] = {
		0, 1, 2, 3, 4, 5, 6, 6, 7, 7, 7, 7
	};

	FUNC4(pdev, port + 3, &idefr);

	if (FUNC0(adev))
		idefr |= 0x04;	/* IORDY enable */
	else
		idefr &= ~0x04;

	if (FUNC1(adev, adev->pio_mode, &at, 30303, 1) < 0) {
		FUNC3(&pdev->dev, "unknown mode %d\n", adev->pio_mode);
		return;
	}

	at.active = FUNC2(at.active, 2, 16) - 2;
	at.setup = FUNC2(at.setup, 1, 4) - 1;
	at.recover = FUNC2(at.recover, 1, 12) - 1;

	idetcr = (at.setup << 6) | (recoverbits[at.recover] << 3) | activebits[at.active];

	FUNC5(pdev, port, idetcr);
	FUNC5(pdev, port + 3, idefr);
	/* We use ap->private_data as a pointer to the device currently
	   loaded for timing */
	ap->private_data = adev;
}