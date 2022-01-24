#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sdio_func {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct btmrvl_sdio_card {TYPE_3__* plt_wake_cfg; struct btmrvl_private* priv; } ;
struct TYPE_4__ {struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_2__* adapter; TYPE_1__ btmrvl_dev; int /*<<< orphan*/  (* hw_wakeup_firmware ) (struct btmrvl_private*) ;} ;
typedef  int /*<<< orphan*/  mmc_pm_flag_t ;
struct TYPE_6__ {scalar_t__ irq_bt; scalar_t__ wake_by_bt; } ;
struct TYPE_5__ {int is_suspended; int /*<<< orphan*/  hs_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HS_DEACTIVATED ; 
 struct sdio_func* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 struct btmrvl_sdio_card* FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC10 (struct btmrvl_private*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct sdio_func *func = FUNC2(dev);
	struct btmrvl_sdio_card *card;
	struct btmrvl_private *priv;
	mmc_pm_flag_t pm_flags;
	struct hci_dev *hcidev;

	if (func) {
		pm_flags = FUNC9(func);
		FUNC0("%s: resume: PM flags = 0x%x", FUNC7(func),
		       pm_flags);
		card = FUNC8(func);
		if (!card || !card->priv) {
			FUNC1("card or priv structure is not valid");
			return 0;
		}
	} else {
		FUNC1("sdio_func is not specified");
		return 0;
	}
	priv = card->priv;

	if (!priv->adapter->is_suspended) {
		FUNC0("device already resumed");
		return 0;
	}

	priv->hw_wakeup_firmware(priv);
	priv->adapter->hs_state = HS_DEACTIVATED;
	hcidev = priv->btmrvl_dev.hcidev;
	FUNC0("%s: HS DEACTIVATED in resume!", hcidev->name);
	priv->adapter->is_suspended = false;
	FUNC0("%s: SDIO resume", hcidev->name);
	FUNC6(hcidev);

	/* Disable platform specific wakeup interrupt */
	if (card->plt_wake_cfg && card->plt_wake_cfg->irq_bt >= 0) {
		FUNC4(card->plt_wake_cfg->irq_bt);
		FUNC3(card->plt_wake_cfg->irq_bt);
		if (card->plt_wake_cfg->wake_by_bt)
			/* Undo our disable, since interrupt handler already
			 * did this.
			 */
			FUNC5(card->plt_wake_cfg->irq_bt);
	}

	return 0;
}