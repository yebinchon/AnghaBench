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
struct hci_uart {int /*<<< orphan*/  flags; struct hci_dev* hdev; TYPE_2__* proto; int /*<<< orphan*/  hdev_flags; TYPE_1__* tty; } ;
struct hci_dev {int /*<<< orphan*/  dev_type; int /*<<< orphan*/  quirks; int /*<<< orphan*/  setup; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  bus; } ;
struct TYPE_4__ {int (* open ) (struct hci_uart*) ;int /*<<< orphan*/  (* close ) (struct hci_uart*) ;int /*<<< orphan*/  manufacturer; scalar_t__ setup; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_AMP ; 
 int /*<<< orphan*/  HCI_PRIMARY ; 
 int /*<<< orphan*/  HCI_QUIRK_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  HCI_QUIRK_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_QUIRK_RESET_ON_CLOSE ; 
 int /*<<< orphan*/  HCI_UART ; 
 int /*<<< orphan*/  HCI_UART_CREATE_AMP ; 
 int /*<<< orphan*/  HCI_UART_EXT_CONFIG ; 
 int /*<<< orphan*/  HCI_UART_INIT_PENDING ; 
 int /*<<< orphan*/  HCI_UART_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_UART_REGISTERED ; 
 int /*<<< orphan*/  HCI_UART_RESET_ON_INIT ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct hci_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct hci_uart*) ; 
 int /*<<< orphan*/  hci_uart_close ; 
 int /*<<< orphan*/  hci_uart_flush ; 
 int /*<<< orphan*/  hci_uart_open ; 
 int /*<<< orphan*/  hci_uart_send_frame ; 
 int /*<<< orphan*/  hci_uart_setup ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_uart*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hci_uart *hu)
{
	struct hci_dev *hdev;
	int err;

	FUNC0("");

	/* Initialize and register HCI device */
	hdev = FUNC3();
	if (!hdev) {
		FUNC1("Can't allocate HCI device");
		return -ENOMEM;
	}

	hu->hdev = hdev;

	hdev->bus = HCI_UART;
	FUNC6(hdev, hu);

	/* Only when vendor specific setup callback is provided, consider
	 * the manufacturer information valid. This avoids filling in the
	 * value for Ericsson when nothing is specified.
	 */
	if (hu->proto->setup)
		hdev->manufacturer = hu->proto->manufacturer;

	hdev->open  = hci_uart_open;
	hdev->close = hci_uart_close;
	hdev->flush = hci_uart_flush;
	hdev->send  = hci_uart_send_frame;
	hdev->setup = hci_uart_setup;
	FUNC2(hdev, hu->tty->dev);

	if (FUNC10(HCI_UART_RAW_DEVICE, &hu->hdev_flags))
		FUNC7(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);

	if (FUNC10(HCI_UART_EXT_CONFIG, &hu->hdev_flags))
		FUNC7(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks);

	if (!FUNC10(HCI_UART_RESET_ON_INIT, &hu->hdev_flags))
		FUNC7(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

	if (FUNC10(HCI_UART_CREATE_AMP, &hu->hdev_flags))
		hdev->dev_type = HCI_AMP;
	else
		hdev->dev_type = HCI_PRIMARY;

	/* Only call open() for the protocol after hdev is fully initialized as
	 * open() (or a timer/workqueue it starts) may attempt to reference it.
	 */
	err = hu->proto->open(hu);
	if (err) {
		hu->hdev = NULL;
		FUNC4(hdev);
		return err;
	}

	if (FUNC10(HCI_UART_INIT_PENDING, &hu->hdev_flags))
		return 0;

	if (FUNC5(hdev) < 0) {
		FUNC1("Can't register HCI device");
		hu->proto->close(hu);
		hu->hdev = NULL;
		FUNC4(hdev);
		return -ENODEV;
	}

	FUNC7(HCI_UART_REGISTERED, &hu->flags);

	return 0;
}