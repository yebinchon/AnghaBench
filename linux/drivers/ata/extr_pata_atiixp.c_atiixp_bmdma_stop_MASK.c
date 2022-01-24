#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ata_queued_cmd {TYPE_2__* dev; struct ata_port* ap; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_4__ {int devno; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIIXP_IDE_UDMA_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	int dn = (2 * ap->port_no) + qc->dev->devno;
	u16 tmp16;

	FUNC1(pdev, ATIIXP_IDE_UDMA_CONTROL, &tmp16);
	tmp16 &= ~(1 << dn);
	FUNC2(pdev, ATIIXP_IDE_UDMA_CONTROL, tmp16);
	FUNC0(qc);
}