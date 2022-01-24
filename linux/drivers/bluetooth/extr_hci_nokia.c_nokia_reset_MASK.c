#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nokia_bt_dev {TYPE_1__* serdev; int /*<<< orphan*/  reset; int /*<<< orphan*/  wakeup_host; int /*<<< orphan*/  wakeup_bt; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  INIT_BAUD_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct hci_uart *hu)
{
	struct nokia_bt_dev *btdev = hu->priv;
	struct device *dev = &btdev->serdev->dev;
	int err;

	/* reset routine */
	FUNC2(btdev->reset, 1);
	FUNC2(btdev->wakeup_bt, 1);

	FUNC3(100);

	/* safety check */
	err = FUNC1(btdev->wakeup_host);
	if (err == 1) {
		FUNC0(dev, "reset: host wakeup not low!");
		return -EPROTO;
	}

	/* flush queue */
	FUNC7(btdev->serdev);

	/* init uart */
	FUNC4(btdev->serdev, false);
	FUNC5(btdev->serdev, INIT_BAUD_RATE);

	FUNC2(btdev->reset, 0);

	/* wait for cts */
	err = FUNC6(btdev->serdev, true, 200);
	if (err < 0) {
		FUNC0(dev, "CTS not received: %d", err);
		return err;
	}

	FUNC4(btdev->serdev, true);

	return 0;
}