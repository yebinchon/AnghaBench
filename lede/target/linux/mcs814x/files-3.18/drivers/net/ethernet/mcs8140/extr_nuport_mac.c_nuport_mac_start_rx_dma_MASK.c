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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct nuport_mac_priv {int rx_addr; TYPE_1__* pdev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RX_ALLOC_SIZE ; 
 int /*<<< orphan*/  RX_BUFFER_ADDR ; 
 int RX_DMA_ENABLE ; 
 int /*<<< orphan*/  RX_START_DMA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct nuport_mac_priv *priv,
					struct sk_buff *skb)
{
	u32 reg;
	unsigned int timeout = 2048;

	while (timeout--) {
		reg = FUNC4(RX_START_DMA);
		if (!(reg & RX_DMA_ENABLE)) {
			FUNC3(priv->dev, "dma ready\n");
			break;
		}
		FUNC0();
	}

	if (!timeout)
		return -EBUSY;

	priv->rx_addr = FUNC1(&priv->pdev->dev, skb->data,
				RX_ALLOC_SIZE, DMA_FROM_DEVICE);
	if (FUNC2(&priv->pdev->dev, priv->rx_addr))
		return -ENOMEM;

	FUNC5(priv->rx_addr, RX_BUFFER_ADDR);
	FUNC6();
	FUNC5(RX_DMA_ENABLE, RX_START_DMA);

	return 0;
}