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
typedef  int /*<<< orphan*/  u8 ;
struct sdio_func {int dummy; } ;
struct btmrvl_sdio_card {TYPE_1__* reg; struct btmrvl_private* priv; } ;
struct btmrvl_private {int /*<<< orphan*/  driver_lock; scalar_t__ surprise_removed; } ;
struct TYPE_2__ {scalar_t__ int_read_to_clear; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sdio_func*,struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct btmrvl_private*) ; 
 int FUNC2 (struct btmrvl_sdio_card*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct btmrvl_sdio_card*,int /*<<< orphan*/ *) ; 
 struct btmrvl_sdio_card* FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  sdio_ireg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sdio_func *func)
{
	struct btmrvl_private *priv;
	struct btmrvl_sdio_card *card;
	ulong flags;
	u8 ireg = 0;
	int ret;

	card = FUNC4(func);
	if (!card || !card->priv) {
		FUNC0("sbi_interrupt(%p) card or priv is NULL, card=%p",
		       func, card);
		return;
	}

	priv = card->priv;

	if (priv->surprise_removed)
		return;

	if (card->reg->int_read_to_clear)
		ret = FUNC2(card, &ireg);
	else
		ret = FUNC3(card, &ireg);

	if (ret)
		return;

	FUNC5(&priv->driver_lock, flags);
	sdio_ireg |= ireg;
	FUNC6(&priv->driver_lock, flags);

	FUNC1(priv);
}