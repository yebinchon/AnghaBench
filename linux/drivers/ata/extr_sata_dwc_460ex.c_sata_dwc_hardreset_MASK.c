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
struct sata_dwc_device {TYPE_1__* sata_dwc_regs; } ;
struct ata_link {int /*<<< orphan*/  ap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dbtsr; int /*<<< orphan*/  dmacr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHB_DMA_BRST_DFLT ; 
 struct sata_dwc_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SATA_DWC_DMACR_TXRXCH_CLEAR ; 
 int /*<<< orphan*/  FUNC3 (struct sata_dwc_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct ata_link*,unsigned int*,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ata_link *link, unsigned int *class,
			      unsigned long deadline)
{
	struct sata_dwc_device *hsdev = FUNC0(link->ap);
	int ret;

	ret = FUNC5(link, class, deadline);

	FUNC3(hsdev);

	/* Reconfigure the DMA control register */
	FUNC4(&hsdev->sata_dwc_regs->dmacr,
			SATA_DWC_DMACR_TXRXCH_CLEAR);

	/* Reconfigure the DMA Burst Transaction Size register */
	FUNC4(&hsdev->sata_dwc_regs->dbtsr,
			FUNC2(AHB_DMA_BRST_DFLT) |
			FUNC1(AHB_DMA_BRST_DFLT));

	return ret;
}