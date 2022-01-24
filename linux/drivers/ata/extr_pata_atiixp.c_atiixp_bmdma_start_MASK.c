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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIIXP_IDE_UDMA_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 
 scalar_t__ FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct ata_device *adev = qc->dev;

	struct pci_dev *pdev = FUNC4(ap->host->dev);
	int dn = (2 * ap->port_no) + adev->devno;
	u16 tmp16;

	FUNC2(pdev, ATIIXP_IDE_UDMA_CONTROL, &tmp16);
	if (FUNC1(adev))
		tmp16 |= (1 << dn);
	else
		tmp16 &= ~(1 << dn);
	FUNC3(pdev, ATIIXP_IDE_UDMA_CONTROL, tmp16);
	FUNC0(qc);
}