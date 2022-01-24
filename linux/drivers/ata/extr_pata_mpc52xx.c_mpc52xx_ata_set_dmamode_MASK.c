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
struct mpc52xx_ata_priv {int dummy; } ;
struct ata_port {int /*<<< orphan*/  dev; TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; int /*<<< orphan*/  devno; } ;
struct TYPE_2__ {struct mpc52xx_ata_priv* private_data; } ;

/* Variables and functions */
 int XFER_MW_DMA_0 ; 
 scalar_t__ XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mpc52xx_ata_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mpc52xx_ata_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mpc52xx_ata_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ata_port *ap, struct ata_device *adev)
{
	struct mpc52xx_ata_priv *priv = ap->host->private_data;
	int rv;

	if (adev->dma_mode >= XFER_UDMA_0) {
		int dma = adev->dma_mode - XFER_UDMA_0;
		rv = FUNC3(priv, adev->devno, dma);
	} else {
		int dma = adev->dma_mode - XFER_MW_DMA_0;
		rv = FUNC2(priv, adev->devno, dma);
	}

	if (rv) {
		FUNC0(ap->dev,
			"Trying to select invalid DMA mode %d\n",
			adev->dma_mode);
		return;
	}

	FUNC1(priv, adev->devno);
}