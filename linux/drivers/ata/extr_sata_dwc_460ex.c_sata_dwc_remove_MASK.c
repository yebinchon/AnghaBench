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
struct sata_dwc_device {int /*<<< orphan*/  phy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ata_host {struct sata_dwc_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct ata_host* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sata_dwc_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *ofdev)
{
	struct device *dev = &ofdev->dev;
	struct ata_host *host = FUNC2(dev);
	struct sata_dwc_device *hsdev = host->private_data;

	FUNC0(host);

	FUNC3(hsdev->phy);

#ifdef CONFIG_SATA_DWC_OLD_DMA
	/* Free SATA DMA resources */
	sata_dwc_dma_exit_old(hsdev);
#endif

	FUNC1(&ofdev->dev, "done\n");
	return 0;
}