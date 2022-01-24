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
struct mt7620_gsw {int dummy; } ;
struct fe_priv {int /*<<< orphan*/  page_lock; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ swpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSW_REG_SMACCR0 ; 
 int /*<<< orphan*/  GSW_REG_SMACCR1 ; 
 int /*<<< orphan*/  FUNC0 (struct mt7620_gsw*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct fe_priv *priv, unsigned char *mac)
{
	struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;
	unsigned long flags;

	FUNC1(&priv->page_lock, flags);
	FUNC0(gsw, (mac[0] << 8) | mac[1], GSW_REG_SMACCR1);
	FUNC0(gsw, (mac[2] << 24) | (mac[3] << 16) | (mac[4] << 8) | mac[5],
		GSW_REG_SMACCR0);
	FUNC2(&priv->page_lock, flags);
}