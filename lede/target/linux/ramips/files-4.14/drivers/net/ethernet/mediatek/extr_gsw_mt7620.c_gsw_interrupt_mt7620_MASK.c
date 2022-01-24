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
struct mt7620_gsw {scalar_t__ port4; } ;
struct fe_priv {int* link; TYPE_1__* soc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ swpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSW_REG_ISR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PORT4_EPHY ; 
 int PORT_IRQ_ST_CHG ; 
 int /*<<< orphan*/  FUNC1 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fe_priv*,int,int,int,int) ; 
 int FUNC3 (struct mt7620_gsw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7620_gsw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_priv)
{
	struct fe_priv *priv = (struct fe_priv *)_priv;
	struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;
	u32 status;
	int i, max = (gsw->port4 == PORT4_EPHY) ? (4) : (3);

	status = FUNC3(gsw, GSW_REG_ISR);
	if (status & PORT_IRQ_ST_CHG)
		for (i = 0; i <= max; i++) {
			u32 status = FUNC3(gsw, FUNC0(i));
			int link = status & 0x1;

			if (link != priv->link[i])
				FUNC2(priv, i, link,
							(status >> 2) & 3,
							(status & 0x2));

			priv->link[i] = link;
		}
	FUNC1(priv);
	FUNC4(gsw, status, GSW_REG_ISR);

	return IRQ_HANDLED;
}