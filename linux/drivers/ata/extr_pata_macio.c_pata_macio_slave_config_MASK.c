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
struct scsi_device {size_t id; int /*<<< orphan*/  request_queue; int /*<<< orphan*/  host; } ;
struct pata_macio_priv {scalar_t__ kind; int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {struct ata_device* device; } ;
struct ata_port {TYPE_1__ link; struct pata_macio_priv* private_data; } ;
struct ata_device {scalar_t__ class; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATAPI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INVALIDATE ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,char*) ; 
 int FUNC2 (struct scsi_device*) ; 
 struct ata_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ controller_k2_ata6 ; 
 scalar_t__ controller_ohare ; 
 scalar_t__ controller_sh_ata6 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct scsi_device *sdev)
{
	struct ata_port *ap = FUNC3(sdev->host);
	struct pata_macio_priv *priv = ap->private_data;
	struct ata_device *dev;
	u16 cmd;
	int rc;

	/* First call original */
	rc = FUNC2(sdev);
	if (rc)
		return rc;

	/* This is lifted from sata_nv */
	dev = &ap->link.device[sdev->id];

	/* OHare has issues with non cache aligned DMA on some chipsets */
	if (priv->kind == controller_ohare) {
		FUNC4(sdev->request_queue, 31);
		FUNC5(sdev->request_queue, 31);

		/* Tell the world about it */
		FUNC1(dev, "OHare alignment limits applied\n");
		return 0;
	}

	/* We only have issues with ATAPI */
	if (dev->class != ATA_DEV_ATAPI)
		return 0;

	/* Shasta and K2 seem to have "issues" with reads ... */
	if (priv->kind == controller_sh_ata6 || priv->kind == controller_k2_ata6) {
		/* Allright these are bad, apply restrictions */
		FUNC4(sdev->request_queue, 15);
		FUNC5(sdev->request_queue, 15);

		/* We enable MWI and hack cache line size directly here, this
		 * is specific to this chipset and not normal values, we happen
		 * to somewhat know what we are doing here (which is basically
		 * to do the same Apple does and pray they did not get it wrong :-)
		 */
		FUNC0(!priv->pdev);
		FUNC7(priv->pdev, PCI_CACHE_LINE_SIZE, 0x08);
		FUNC6(priv->pdev, PCI_COMMAND, &cmd);
		FUNC8(priv->pdev, PCI_COMMAND,
				      cmd | PCI_COMMAND_INVALIDATE);

		/* Tell the world about it */
		FUNC1(dev, "K2/Shasta alignment limits applied\n");
	}

	return 0;
}