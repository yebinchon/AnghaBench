#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct fe_priv {int /*<<< orphan*/  page_lock; TYPE_2__* phy; int /*<<< orphan*/  rx_napi; TYPE_1__* soc; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (struct fe_priv*) ;} ;
struct TYPE_3__ {int tx_int; int rx_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_REG_PDMA_GLO_CFG ; 
 int FE_RX_DMA_BUSY ; 
 int FE_RX_DMA_EN ; 
 int FE_TX_DMA_BUSY ; 
 int FE_TX_DMA_EN ; 
 int FE_TX_WB_DDONE ; 
 int /*<<< orphan*/  FUNC0 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct fe_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct fe_priv*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct fe_priv *priv = FUNC7(dev);
	unsigned long flags;
	int i;

	FUNC8(dev);
	FUNC1(priv->soc->tx_int | priv->soc->rx_int);
	FUNC6(&priv->rx_napi);

	if (priv->phy)
		priv->phy->stop(priv);

	FUNC9(&priv->page_lock, flags);

	FUNC3(FUNC2(FE_REG_PDMA_GLO_CFG) &
		     ~(FE_TX_WB_DDONE | FE_RX_DMA_EN | FE_TX_DMA_EN),
		     FE_REG_PDMA_GLO_CFG);
	FUNC10(&priv->page_lock, flags);

	/* wait dma stop */
	for (i = 0; i < 10; i++) {
		if (FUNC2(FE_REG_PDMA_GLO_CFG) &
				(FE_TX_DMA_BUSY | FE_RX_DMA_BUSY)) {
			FUNC4(20);
			continue;
		}
		break;
	}

	FUNC0(priv);

#ifdef CONFIG_NET_MEDIATEK_OFFLOAD
	mtk_ppe_remove(priv);
#endif

	return 0;
}