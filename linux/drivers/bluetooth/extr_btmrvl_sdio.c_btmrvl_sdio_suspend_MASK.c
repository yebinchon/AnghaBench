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
struct btmrvl_sdio_card {TYPE_2__* plt_wake_cfg; struct btmrvl_private* priv; } ;
struct TYPE_4__ {struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_3__* adapter; TYPE_1__ btmrvl_dev; } ;
typedef  int mmc_pm_flag_t ;
struct TYPE_6__ {int is_suspending; scalar_t__ hs_state; int is_suspended; } ;
struct TYPE_5__ {scalar_t__ irq_bt; int wake_by_bt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EBUSY ; 
 int ENOSYS ; 
 scalar_t__ HS_ACTIVATED ; 
 int MMC_PM_KEEP_POWER ; 
 scalar_t__ FUNC2 (struct btmrvl_private*) ; 
 struct sdio_func* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 struct btmrvl_sdio_card* FUNC10 (struct sdio_func*) ; 
 int FUNC11 (struct sdio_func*) ; 
 int FUNC12 (struct sdio_func*,int) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct sdio_func *func = FUNC3(dev);
	struct btmrvl_sdio_card *card;
	struct btmrvl_private *priv;
	mmc_pm_flag_t pm_flags;
	struct hci_dev *hcidev;

	if (func) {
		pm_flags = FUNC11(func);
		FUNC0("%s: suspend: PM flags = 0x%x", FUNC9(func),
		       pm_flags);
		if (!(pm_flags & MMC_PM_KEEP_POWER)) {
			FUNC1("%s: cannot remain alive while suspended",
			       FUNC9(func));
			return -ENOSYS;
		}
		card = FUNC10(func);
		if (!card || !card->priv) {
			FUNC1("card or priv structure is not valid");
			return 0;
		}
	} else {
		FUNC1("sdio_func is not specified");
		return 0;
	}

	/* Enable platform specific wakeup interrupt */
	if (card->plt_wake_cfg && card->plt_wake_cfg->irq_bt >= 0) {
		card->plt_wake_cfg->wake_by_bt = false;
		FUNC6(card->plt_wake_cfg->irq_bt);
		FUNC7(card->plt_wake_cfg->irq_bt);
	}

	priv = card->priv;
	priv->adapter->is_suspending = true;
	hcidev = priv->btmrvl_dev.hcidev;
	FUNC0("%s: SDIO suspend", hcidev->name);
	FUNC8(hcidev);

	if (priv->adapter->hs_state != HS_ACTIVATED) {
		if (FUNC2(priv)) {
			FUNC1("HS not activated, suspend failed!");
			/* Disable platform specific wakeup interrupt */
			if (card->plt_wake_cfg &&
			    card->plt_wake_cfg->irq_bt >= 0) {
				FUNC5(card->plt_wake_cfg->irq_bt);
				FUNC4(card->plt_wake_cfg->irq_bt);
			}

			priv->adapter->is_suspending = false;
			return -EBUSY;
		}
	}

	priv->adapter->is_suspending = false;
	priv->adapter->is_suspended = true;

	/* We will keep the power when hs enabled successfully */
	if (priv->adapter->hs_state == HS_ACTIVATED) {
		FUNC0("suspend with MMC_PM_KEEP_POWER");
		return FUNC12(func, MMC_PM_KEEP_POWER);
	}

	FUNC0("suspend without MMC_PM_KEEP_POWER");
	return 0;
}