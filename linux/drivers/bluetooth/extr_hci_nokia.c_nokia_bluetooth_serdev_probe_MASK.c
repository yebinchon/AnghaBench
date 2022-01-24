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
struct device {int dummy; } ;
struct serdev_device {struct device dev; } ;
struct TYPE_2__ {int alignment; struct nokia_bt_dev* priv; struct serdev_device* serdev; } ;
struct nokia_bt_dev {TYPE_1__ hu; int /*<<< orphan*/  txq; int /*<<< orphan*/  sysclk_speed; struct clk* wakeup_bt; int /*<<< orphan*/  wake_irq; struct clk* wakeup_host; struct clk* reset; struct serdev_device* serdev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 struct clk* FUNC6 (struct device*,char*) ; 
 void* FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct nokia_bt_dev* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct nokia_bt_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct clk*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nokia_proto ; 
 int /*<<< orphan*/  FUNC12 (struct serdev_device*,struct nokia_bt_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wakeup_handler ; 

__attribute__((used)) static int FUNC14(struct serdev_device *serdev)
{
	struct device *dev = &serdev->dev;
	struct nokia_bt_dev *btdev;
	struct clk *sysclk;
	int err = 0;

	btdev = FUNC8(dev, sizeof(*btdev), GFP_KERNEL);
	if (!btdev)
		return -ENOMEM;

	btdev->hu.serdev = btdev->serdev = serdev;
	FUNC12(serdev, btdev);

	btdev->reset = FUNC7(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(btdev->reset)) {
		err = FUNC1(btdev->reset);
		FUNC5(dev, "could not get reset gpio: %d", err);
		return err;
	}

	btdev->wakeup_host = FUNC7(dev, "host-wakeup", GPIOD_IN);
	if (FUNC0(btdev->wakeup_host)) {
		err = FUNC1(btdev->wakeup_host);
		FUNC5(dev, "could not get host wakeup gpio: %d", err);
		return err;
	}

	btdev->wake_irq = FUNC10(btdev->wakeup_host);

	err = FUNC9(dev, btdev->wake_irq, NULL,
		wakeup_handler,
		IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
		"wakeup", btdev);
	if (err) {
		FUNC5(dev, "could request wakeup irq: %d", err);
		return err;
	}

	btdev->wakeup_bt = FUNC7(dev, "bluetooth-wakeup",
					   GPIOD_OUT_LOW);
	if (FUNC0(btdev->wakeup_bt)) {
		err = FUNC1(btdev->wakeup_bt);
		FUNC5(dev, "could not get BT wakeup gpio: %d", err);
		return err;
	}

	sysclk = FUNC6(dev, "sysclk");
	if (FUNC0(sysclk)) {
		err = FUNC1(sysclk);
		FUNC5(dev, "could not get sysclk: %d", err);
		return err;
	}

	FUNC4(sysclk);
	btdev->sysclk_speed = FUNC3(sysclk);
	FUNC2(sysclk);

	FUNC13(&btdev->txq);

	btdev->hu.priv = btdev;
	btdev->hu.alignment = 2; /* Nokia H4+ is word aligned */

	err = FUNC11(&btdev->hu, &nokia_proto);
	if (err) {
		FUNC5(dev, "could not register bluetooth uart: %d", err);
		return err;
	}

	return 0;
}