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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int dma_chan_count ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  omap24xx_dma_irq ; 
 int FUNC2 (struct platform_device*,int) ; 
 int FUNC3 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int dma_irq;

	if (FUNC0()) {
		char irq_name[4];
		FUNC5(irq_name, "0");
		dma_irq = FUNC3(pdev, irq_name);
		if (dma_irq >= 0)
			FUNC4(dma_irq, &omap24xx_dma_irq);
	} else {
		int irq_rel = 0;
		for ( ; irq_rel < dma_chan_count; irq_rel++) {
			dma_irq = FUNC2(pdev, irq_rel);
			FUNC1(dma_irq, (void *)(irq_rel + 1));
		}
	}
	return 0;
}