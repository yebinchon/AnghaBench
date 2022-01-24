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
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  irq; } ;
struct fe_priv {TYPE_1__* soc; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int tx_int; int rx_int; scalar_t__ (* fwd_config ) (struct fe_priv*) ;int /*<<< orphan*/  (* set_mac ) (struct fe_priv*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t FE_REG_DLY_INT_CFG ; 
 size_t FE_REG_FE_DMA_VID_BASE ; 
 size_t FE_REG_FE_RST_GL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  fe_handle_irq ; 
 int /*<<< orphan*/  FUNC2 (struct fe_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* fe_reg_table ; 
 int /*<<< orphan*/  FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct fe_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct fe_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct fe_priv*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct fe_priv *priv = FUNC7(dev);
	int i, err;

	err = FUNC1(priv->dev, dev->irq, fe_handle_irq, 0,
			       FUNC0(priv->dev), dev);
	if (err)
		return err;

	if (priv->soc->set_mac)
		priv->soc->set_mac(priv, dev->dev_addr);
	else
		FUNC2(priv, dev->dev_addr);

	/* disable delay interrupt */
	FUNC4(0, FE_REG_DLY_INT_CFG);

	FUNC3(priv->soc->tx_int | priv->soc->rx_int);

	/* frame engine will push VLAN tag regarding to VIDX feild in Tx desc */
	if (fe_reg_table[FE_REG_FE_DMA_VID_BASE])
		for (i = 0; i < 16; i += 2)
			FUNC5(((i + 1) << 16) + i,
			       fe_reg_table[FE_REG_FE_DMA_VID_BASE] +
			       (i * 2));

	if (priv->soc->fwd_config(priv))
		FUNC6(dev, "unable to get clock\n");

	if (fe_reg_table[FE_REG_FE_RST_GL]) {
		FUNC4(1, FE_REG_FE_RST_GL);
		FUNC4(0, FE_REG_FE_RST_GL);
	}

	return 0;
}