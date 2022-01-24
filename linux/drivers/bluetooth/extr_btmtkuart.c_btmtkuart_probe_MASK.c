#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct serdev_device {int /*<<< orphan*/  dev; } ;
struct hci_dev {int manufacturer; int /*<<< orphan*/  quirks; int /*<<< orphan*/  send; int /*<<< orphan*/  shutdown; int /*<<< orphan*/  setup; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  bus; } ;
struct btmtkuart_dev {int /*<<< orphan*/  vcc; int /*<<< orphan*/  tx_state; int /*<<< orphan*/  pins_runtime; int /*<<< orphan*/  pinctrl; scalar_t__ boot; scalar_t__ reset; int /*<<< orphan*/  osc; int /*<<< orphan*/  pins_boot; struct hci_dev* hdev; int /*<<< orphan*/  txq; int /*<<< orphan*/  tx_work; struct serdev_device* serdev; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTMTKUART_REQUIRED_WAKEUP ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_QUIRK_NON_PERSISTENT_SETUP ; 
 int /*<<< orphan*/  HCI_UART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btmtkuart_client_ops ; 
 int /*<<< orphan*/  btmtkuart_close ; 
 int /*<<< orphan*/  btmtkuart_flush ; 
 scalar_t__ FUNC2 (struct btmtkuart_dev*) ; 
 int /*<<< orphan*/  btmtkuart_open ; 
 int FUNC3 (struct serdev_device*) ; 
 int /*<<< orphan*/  btmtkuart_send_frame ; 
 int /*<<< orphan*/  btmtkuart_setup ; 
 int /*<<< orphan*/  btmtkuart_shutdown ; 
 int /*<<< orphan*/  btmtkuart_tx_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct btmtkuart_dev* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 struct hci_dev* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,struct btmtkuart_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct serdev_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct serdev_device*,struct btmtkuart_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 

__attribute__((used)) static int FUNC25(struct serdev_device *serdev)
{
	struct btmtkuart_dev *bdev;
	struct hci_dev *hdev;
	int err;

	bdev = FUNC8(&serdev->dev, sizeof(*bdev), GFP_KERNEL);
	if (!bdev)
		return -ENOMEM;

	bdev->data = FUNC15(&serdev->dev);
	if (!bdev->data)
		return -ENODEV;

	bdev->serdev = serdev;
	FUNC21(serdev, bdev);

	FUNC20(serdev, &btmtkuart_client_ops);

	err = FUNC3(serdev);
	if (err < 0)
		return err;

	FUNC0(&bdev->tx_work, btmtkuart_tx_work);
	FUNC23(&bdev->txq);

	/* Initialize and register HCI device */
	hdev = FUNC10();
	if (!hdev) {
		FUNC6(&serdev->dev, "Can't allocate HCI device\n");
		return -ENOMEM;
	}

	bdev->hdev = hdev;

	hdev->bus = HCI_UART;
	FUNC13(hdev, bdev);

	hdev->open     = btmtkuart_open;
	hdev->close    = btmtkuart_close;
	hdev->flush    = btmtkuart_flush;
	hdev->setup    = btmtkuart_setup;
	hdev->shutdown = btmtkuart_shutdown;
	hdev->send     = btmtkuart_send_frame;
	FUNC1(hdev, &serdev->dev);

	hdev->manufacturer = 70;
	FUNC22(HCI_QUIRK_NON_PERSISTENT_SETUP, &hdev->quirks);

	if (FUNC2(bdev)) {
		err = FUNC5(bdev->osc);
		if (err < 0)
			return err;

		if (bdev->boot) {
			FUNC9(bdev->boot, 1);
		} else {
			/* Switch to the specific pin state for the booting
			 * requires.
			 */
			FUNC16(bdev->pinctrl, bdev->pins_boot);
		}

		/* Power on */
		err = FUNC19(bdev->vcc);
		if (err < 0) {
			FUNC4(bdev->osc);
			return err;
		}

		/* Reset if the reset-gpios is available otherwise the board
		 * -level design should be guaranteed.
		 */
		if (bdev->reset) {
			FUNC9(bdev->reset, 1);
			FUNC24(1000, 2000);
			FUNC9(bdev->reset, 0);
		}

		/* Wait some time until device got ready and switch to the pin
		 * mode the device requires for UART transfers.
		 */
		FUNC14(50);

		if (bdev->boot)
			FUNC7(&serdev->dev, bdev->boot);

		FUNC16(bdev->pinctrl, bdev->pins_runtime);

		/* A standalone device doesn't depends on power domain on SoC,
		 * so mark it as no callbacks.
		 */
		FUNC17(&serdev->dev);

		FUNC22(BTMTKUART_REQUIRED_WAKEUP, &bdev->tx_state);
	}

	err = FUNC12(hdev);
	if (err < 0) {
		FUNC6(&serdev->dev, "Can't register HCI device\n");
		FUNC11(hdev);
		goto err_regulator_disable;
	}

	return 0;

err_regulator_disable:
	if (FUNC2(bdev))
		FUNC18(bdev->vcc);

	return err;
}