#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sdio_func {int dummy; } ;
struct btmrvl_sdio_card {TYPE_1__* priv; } ;
struct TYPE_3__ {int surprise_removed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MODULE_SHUTDOWN_REQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct btmrvl_sdio_card* FUNC5 (struct sdio_func*) ; 
 scalar_t__ user_rmmod ; 

__attribute__((used)) static void FUNC6(struct sdio_func *func)
{
	struct btmrvl_sdio_card *card;

	if (func) {
		card = FUNC5(func);
		if (card) {
			/* Send SHUTDOWN command & disable interrupt
			 * if user removes the module.
			 */
			if (user_rmmod) {
				FUNC4(card->priv,
							MODULE_SHUTDOWN_REQ);
				FUNC2(card);
			}
			FUNC0("unregister dev");
			card->priv->surprise_removed = true;
			FUNC3(card);
			FUNC1(card->priv);
		}
	}
}