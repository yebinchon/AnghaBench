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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct atp867x_priv {int pci66mhz; int /*<<< orphan*/  eightb_piospd; int /*<<< orphan*/  slave_piospd; int /*<<< orphan*/  mstr_piospd; int /*<<< orphan*/  dma_mode; } ;
struct ata_port {int port_no; struct atp867x_priv* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*,int) ; 
 int ATP867X_IO_SYS_INFO_66MHZ ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct atp867x_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ata_port *ap)
{
	struct pci_dev *pdev = FUNC7(ap->host->dev);
	struct atp867x_priv *dp;
	int port = ap->port_no;

	dp = ap->private_data =
		FUNC5(&pdev->dev, sizeof(*dp), GFP_KERNEL);
	if (dp == NULL)
		return -ENOMEM;

	dp->dma_mode	 = FUNC1(ap, port);
	dp->mstr_piospd	 = FUNC2(ap, port);
	dp->slave_piospd = FUNC3(ap, port);
	dp->eightb_piospd = FUNC0(ap, port);

	dp->pci66mhz =
		FUNC6(FUNC4(ap)) & ATP867X_IO_SYS_INFO_66MHZ;

	return 0;
}