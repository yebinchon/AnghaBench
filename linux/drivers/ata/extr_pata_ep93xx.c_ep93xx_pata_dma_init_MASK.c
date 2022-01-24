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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {char* name; void* direction; void* port; } ;
struct ep93xx_pata_data {void* dma_tx_channel; int /*<<< orphan*/  udma_out_phys; void* dma_rx_channel; int /*<<< orphan*/  udma_in_phys; TYPE_1__ dma_tx_data; TYPE_1__ dma_rx_data; struct platform_device* pdev; } ;
struct dma_slave_config {void* dst_addr_width; int /*<<< orphan*/  dst_addr; void* direction; void* src_addr_width; int /*<<< orphan*/  src_addr; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 void* DMA_DEV_TO_MEM ; 
 void* DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 void* EP93XX_DMA_IDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (void*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  ep93xx_pata_dma_filter ; 
 int /*<<< orphan*/  FUNC6 (struct ep93xx_pata_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_slave_config*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct ep93xx_pata_data *drv_data)
{
	const struct platform_device *pdev = drv_data->pdev;
	dma_cap_mask_t mask;
	struct dma_slave_config conf;

	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);

	/*
	 * Request two channels for IDE. Another possibility would be
	 * to request only one channel, and reprogram it's direction at
	 * start of new transfer.
	 */
	drv_data->dma_rx_data.port = EP93XX_DMA_IDE;
	drv_data->dma_rx_data.direction = DMA_DEV_TO_MEM;
	drv_data->dma_rx_data.name = "ep93xx-pata-rx";
	drv_data->dma_rx_channel = FUNC4(mask,
		ep93xx_pata_dma_filter, &drv_data->dma_rx_data);
	if (!drv_data->dma_rx_channel)
		return;

	drv_data->dma_tx_data.port = EP93XX_DMA_IDE;
	drv_data->dma_tx_data.direction = DMA_MEM_TO_DEV;
	drv_data->dma_tx_data.name = "ep93xx-pata-tx";
	drv_data->dma_tx_channel = FUNC4(mask,
		ep93xx_pata_dma_filter, &drv_data->dma_tx_data);
	if (!drv_data->dma_tx_channel) {
		FUNC3(drv_data->dma_rx_channel);
		return;
	}

	/* Configure receive channel direction and source address */
	FUNC7(&conf, 0, sizeof(conf));
	conf.direction = DMA_DEV_TO_MEM;
	conf.src_addr = drv_data->udma_in_phys;
	conf.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	if (FUNC5(drv_data->dma_rx_channel, &conf)) {
		FUNC0(&pdev->dev, "failed to configure rx dma channel\n");
		FUNC6(drv_data);
		return;
	}

	/* Configure transmit channel direction and destination address */
	FUNC7(&conf, 0, sizeof(conf));
	conf.direction = DMA_MEM_TO_DEV;
	conf.dst_addr = drv_data->udma_out_phys;
	conf.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	if (FUNC5(drv_data->dma_tx_channel, &conf)) {
		FUNC0(&pdev->dev, "failed to configure tx dma channel\n");
		FUNC6(drv_data);
	}
}