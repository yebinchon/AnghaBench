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
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ dma_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, int using_dac)
{
	const int dma_bits = using_dac ? 64 : 32;
	int rc;

	/*
	 * If the device fixup already set the dma_mask to some non-standard
	 * value, don't extend it here. This happens on STA2X11, for example.
	 *
	 * XXX: manipulating the DMA mask from platform code is completely
	 * bogus, platform code should use dev->bus_dma_mask instead..
	 */
	if (pdev->dma_mask && pdev->dma_mask < FUNC0(32))
		return 0;

	rc = FUNC2(&pdev->dev, FUNC0(dma_bits));
	if (rc)
		FUNC1(&pdev->dev, "DMA enable failed\n");
	return rc;
}