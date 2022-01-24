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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CHAN_ON ; 
 int DMA_CHAN_RST ; 
 int DMA_CLK_DIV4 ; 
 int DMA_MAX_CHANNEL ; 
 int DMA_POLL ; 
 int /*<<< orphan*/  DMA_RESET ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  LTQ_DMA_CCTRL ; 
 int /*<<< orphan*/  LTQ_DMA_CPOLL ; 
 int /*<<< orphan*/  LTQ_DMA_CS ; 
 int /*<<< orphan*/  LTQ_DMA_CTRL ; 
 int /*<<< orphan*/  LTQ_DMA_ID ; 
 int /*<<< orphan*/  LTQ_DMA_IRNEN ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct clk* ltq_dma_membase ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct platform_device *pdev)
{
	struct clk *clk;
	struct resource *res;
	unsigned id;
	int i;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	ltq_dma_membase = FUNC4(&pdev->dev, res);
	if (FUNC0(ltq_dma_membase))
		FUNC8("Failed to remap dma resource");

	/* power up and reset the dma engine */
	clk = FUNC2(&pdev->dev, NULL);
	if (FUNC0(clk))
		FUNC8("Failed to get dma clock");

	FUNC1(clk);
	FUNC7(0, DMA_RESET, LTQ_DMA_CTRL);

	/* disable all interrupts */
	FUNC6(0, LTQ_DMA_IRNEN);

	/* reset/configure each channel */
	for (i = 0; i < DMA_MAX_CHANNEL; i++) {
		FUNC6(i, LTQ_DMA_CS);
		FUNC6(DMA_CHAN_RST, LTQ_DMA_CCTRL);
		FUNC6(DMA_POLL | DMA_CLK_DIV4, LTQ_DMA_CPOLL);
		FUNC7(DMA_CHAN_ON, 0, LTQ_DMA_CCTRL);
	}

	id = FUNC5(LTQ_DMA_ID);
	FUNC3(&pdev->dev,
		"Init done - hw rev: %X, ports: %d, channels: %d\n",
		id & 0x1f, (id >> 16) & 0xf, id >> 20);

	return 0;
}