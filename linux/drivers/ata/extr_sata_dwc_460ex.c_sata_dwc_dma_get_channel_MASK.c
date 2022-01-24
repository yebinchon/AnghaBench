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
struct sata_dwc_device_port {int /*<<< orphan*/  chan; struct sata_dwc_device* hsdev; } ;
struct sata_dwc_device {struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sata_dwc_device_port*) ; 

__attribute__((used)) static int FUNC6(struct sata_dwc_device_port *hsdevp)
{
	struct sata_dwc_device *hsdev = hsdevp->hsdev;
	struct device *dev = hsdev->dev;

#ifdef CONFIG_SATA_DWC_OLD_DMA
	if (!of_find_property(dev->of_node, "dmas", NULL))
		return sata_dwc_dma_get_channel_old(hsdevp);
#endif

	hsdevp->chan = FUNC3(dev, "sata-dma");
	if (FUNC0(hsdevp->chan)) {
		FUNC2(dev, "failed to allocate dma channel: %ld\n",
			FUNC1(hsdevp->chan));
		return FUNC1(hsdevp->chan);
	}

	return 0;
}