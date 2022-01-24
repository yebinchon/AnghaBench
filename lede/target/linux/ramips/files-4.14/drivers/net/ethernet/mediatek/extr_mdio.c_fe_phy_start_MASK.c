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
struct fe_priv {int* link; TYPE_2__* phy; TYPE_1__* soc; } ;
struct TYPE_4__ {scalar_t__* phy; int /*<<< orphan*/  lock; scalar_t__* phy_fixed; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* mdio_adjust_link ) (struct fe_priv*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct fe_priv*,int) ; 

__attribute__((used)) static void FUNC4(struct fe_priv *priv)
{
	unsigned long flags;
	int i;

	for (i = 0; i < 8; i++) {
		if (priv->phy->phy_fixed[i]) {
			FUNC1(&priv->phy->lock, flags);
			priv->link[i] = 1;
			if (priv->soc->mdio_adjust_link)
				priv->soc->mdio_adjust_link(priv, i);
			FUNC2(&priv->phy->lock, flags);
		} else if (priv->phy->phy[i]) {
			FUNC0(priv->phy->phy[i]);
		}
	}
}