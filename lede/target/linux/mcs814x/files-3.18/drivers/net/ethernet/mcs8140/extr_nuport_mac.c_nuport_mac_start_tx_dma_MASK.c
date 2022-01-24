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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct nuport_mac_priv {int tx_addr; TYPE_1__* pdev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TX_BUFFER_ADDR ; 
 int TX_DMA_ENABLE ; 
 int TX_DMA_END_FRAME ; 
 int /*<<< orphan*/  TX_DMA_ENH ; 
 int TX_DMA_ENH_ENABLE ; 
 int TX_DMA_START_FRAME ; 
 int /*<<< orphan*/  TX_PKT_BYTES ; 
 int /*<<< orphan*/  TX_START_DMA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
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
		reg = FUNC4(TX_START_DMA);
		if (!(reg & TX_DMA_ENABLE)) {
			FUNC3(priv->dev, "dma ready\n");
			break;
		}
		FUNC0();
	}

	if (!timeout)
		return -EBUSY;

	priv->tx_addr = FUNC1(&priv->pdev->dev, skb->data,
			skb->len, DMA_TO_DEVICE);
	if (FUNC2(&priv->pdev->dev, priv->tx_addr))
		return -ENOMEM;

	/* enable enhanced mode */
	FUNC5(TX_DMA_ENH_ENABLE, TX_DMA_ENH);
	FUNC5(priv->tx_addr, TX_BUFFER_ADDR);
	FUNC5((skb->len) - 1, TX_PKT_BYTES);
	FUNC6();
	reg = TX_DMA_ENABLE | TX_DMA_START_FRAME | TX_DMA_END_FRAME;
	FUNC5(reg, TX_START_DMA);

	return 0;
}