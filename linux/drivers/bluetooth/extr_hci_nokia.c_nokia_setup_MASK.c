#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nokia_bt_dev {int initialized; int tx_enabled; scalar_t__ man_id; int /*<<< orphan*/  wakeup_bt; TYPE_2__* serdev; } ;
struct hci_uart {TYPE_1__* hdev; struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  quirks; int /*<<< orphan*/  set_bdaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_QUIRK_INVALID_BDADDR ; 
 int /*<<< orphan*/  MAX_BAUD_RATE ; 
 scalar_t__ NOKIA_ID_BCM2048 ; 
 int /*<<< orphan*/  btbcm_set_bdaddr ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (struct hci_uart*) ; 
 int FUNC5 (struct hci_uart*) ; 
 int FUNC6 (struct hci_uart*) ; 
 int FUNC7 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct hci_uart *hu)
{
	struct nokia_bt_dev *btdev = hu->priv;
	struct device *dev = &btdev->serdev->dev;
	int err;

	btdev->initialized = false;

	FUNC3(btdev->serdev, false);

	FUNC8(dev);

	if (btdev->tx_enabled) {
		FUNC2(btdev->wakeup_bt, 0);
		FUNC9(&btdev->serdev->dev);
		btdev->tx_enabled = false;
	}

	FUNC0(dev, "protocol setup");

	/* 0. reset connection */
	err = FUNC4(hu);
	if (err < 0) {
		FUNC1(dev, "Reset failed: %d", err);
		goto out;
	}

	/* 1. negotiate speed etc */
	err = FUNC6(hu);
	if (err < 0) {
		FUNC1(dev, "Negotiation failed: %d", err);
		goto out;
	}

	/* 2. verify correct setup using alive packet */
	err = FUNC5(hu);
	if (err < 0) {
		FUNC1(dev, "Alive check failed: %d", err);
		goto out;
	}

	/* 3. send firmware */
	err = FUNC7(hu);
	if (err < 0) {
		FUNC1(dev, "Could not setup FW: %d", err);
		goto out;
	}

	FUNC3(btdev->serdev, false);
	FUNC10(btdev->serdev, MAX_BAUD_RATE);
	FUNC3(btdev->serdev, true);

	if (btdev->man_id == NOKIA_ID_BCM2048) {
		hu->hdev->set_bdaddr = btbcm_set_bdaddr;
		FUNC11(HCI_QUIRK_INVALID_BDADDR, &hu->hdev->quirks);
		FUNC0(dev, "bcm2048 has invalid bluetooth address!");
	}

	FUNC0(dev, "protocol setup done!");

	FUNC2(btdev->wakeup_bt, 0);
	FUNC9(dev);
	btdev->tx_enabled = false;
	btdev->initialized = true;

	return 0;
out:
	FUNC9(dev);

	return err;
}