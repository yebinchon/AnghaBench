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
typedef  int /*<<< orphan*/  ulong ;
typedef  int u8 ;
struct btmrvl_sdio_card {int /*<<< orphan*/  func; } ;
struct TYPE_2__ {int tx_dnld_rdy; struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; int /*<<< orphan*/  driver_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DN_LD_HOST_INT_STATUS ; 
 int UP_LD_HOST_INT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int sdio_ireg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct btmrvl_private *priv)
{
	ulong flags;
	u8 ireg;
	struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;

	FUNC4(&priv->driver_lock, flags);
	ireg = sdio_ireg;
	sdio_ireg = 0;
	FUNC5(&priv->driver_lock, flags);

	FUNC2(card->func);
	if (ireg & DN_LD_HOST_INT_STATUS) {
		if (priv->btmrvl_dev.tx_dnld_rdy)
			FUNC0("tx_done already received: "
				" int_status=0x%x", ireg);
		else
			priv->btmrvl_dev.tx_dnld_rdy = true;
	}

	if (ireg & UP_LD_HOST_INT_STATUS)
		FUNC1(priv);

	FUNC3(card->func);

	return 0;
}