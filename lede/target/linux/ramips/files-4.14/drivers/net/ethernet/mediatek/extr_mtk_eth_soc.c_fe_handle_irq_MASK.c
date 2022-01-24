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
struct fe_priv {int /*<<< orphan*/  rx_napi; TYPE_1__* soc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int rx_int; int tx_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_REG_FE_INT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct fe_priv* FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev)
{
	struct fe_priv *priv = FUNC6(dev);
	u32 status, int_mask;

	status = FUNC2(FE_REG_FE_INT_STATUS);

	if (FUNC7(!status))
		return IRQ_NONE;

	int_mask = (priv->soc->rx_int | priv->soc->tx_int);
	if (FUNC4(status & int_mask)) {
		if (FUNC4(FUNC5(&priv->rx_napi))) {
			FUNC1(int_mask);
			FUNC0(&priv->rx_napi);
		}
	} else {
		FUNC3(status, FE_REG_FE_INT_STATUS);
	}

	return IRQ_HANDLED;
}