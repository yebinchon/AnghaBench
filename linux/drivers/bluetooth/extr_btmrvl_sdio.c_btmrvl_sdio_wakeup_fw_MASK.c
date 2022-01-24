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
struct btmrvl_sdio_card {int /*<<< orphan*/  func; TYPE_2__* reg; } ;
struct TYPE_3__ {struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HOST_POWER_UP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct btmrvl_private *priv)
{
	struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;
	int ret = 0;

	if (!card || !card->func) {
		FUNC1("card or function is NULL!");
		return -EINVAL;
	}

	FUNC2(card->func);

	FUNC4(card->func, HOST_POWER_UP, card->reg->cfg, &ret);

	FUNC3(card->func);

	FUNC0("wake up firmware");

	return ret;
}