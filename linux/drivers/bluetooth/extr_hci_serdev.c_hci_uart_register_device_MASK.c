#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hci_uart_proto {int (* open ) (struct hci_uart*) ;int /*<<< orphan*/  (* close ) (struct hci_uart*) ;int /*<<< orphan*/  manufacturer; scalar_t__ setup; } ;
struct hci_uart {TYPE_1__* serdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  hdev_flags; struct hci_uart_proto const* proto; int /*<<< orphan*/  proto_lock; int /*<<< orphan*/  write_work; int /*<<< orphan*/  init_ready; struct hci_dev* hdev; } ;
struct hci_dev {int /*<<< orphan*/  dev_type; int /*<<< orphan*/  quirks; int /*<<< orphan*/  setup; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_AMP ; 
 int /*<<< orphan*/  HCI_PRIMARY ; 
 int /*<<< orphan*/  HCI_QUIRK_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  HCI_QUIRK_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_UART ; 
 int /*<<< orphan*/  HCI_UART_CREATE_AMP ; 
 int /*<<< orphan*/  HCI_UART_EXT_CONFIG ; 
 int /*<<< orphan*/  HCI_UART_INIT_PENDING ; 
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 int /*<<< orphan*/  HCI_UART_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_UART_REGISTERED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_dev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 scalar_t__ FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_serdev_client_ops ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,struct hci_uart*) ; 
 int /*<<< orphan*/  hci_uart_close ; 
 int /*<<< orphan*/  hci_uart_flush ; 
 int /*<<< orphan*/  hci_uart_init_work ; 
 int /*<<< orphan*/  hci_uart_open ; 
 int /*<<< orphan*/  hci_uart_send_frame ; 
 int /*<<< orphan*/  hci_uart_setup ; 
 int /*<<< orphan*/  hci_uart_write_work ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_uart*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC17(struct hci_uart *hu,
			     const struct hci_uart_proto *p)
{
	int err;
	struct hci_dev *hdev;

	FUNC0("");

	FUNC12(hu->serdev, &hci_serdev_client_ops);

	err = FUNC11(hu->serdev);
	if (err)
		return err;

	err = p->open(hu);
	if (err)
		goto err_open;

	hu->proto = p;
	FUNC13(HCI_UART_PROTO_READY, &hu->flags);

	/* Initialize and register HCI device */
	hdev = FUNC5();
	if (!hdev) {
		FUNC1("Can't allocate HCI device");
		err = -ENOMEM;
		goto err_alloc;
	}

	hu->hdev = hdev;

	hdev->bus = HCI_UART;
	FUNC8(hdev, hu);

	FUNC2(&hu->init_ready, hci_uart_init_work);
	FUNC2(&hu->write_work, hci_uart_write_work);
	FUNC9(&hu->proto_lock);

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
	FUNC3(hdev, &hu->serdev->dev);

	if (FUNC16(HCI_UART_RAW_DEVICE, &hu->hdev_flags))
		FUNC13(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);

	if (FUNC16(HCI_UART_EXT_CONFIG, &hu->hdev_flags))
		FUNC13(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks);

	if (FUNC16(HCI_UART_CREATE_AMP, &hu->hdev_flags))
		hdev->dev_type = HCI_AMP;
	else
		hdev->dev_type = HCI_PRIMARY;

	if (FUNC16(HCI_UART_INIT_PENDING, &hu->hdev_flags))
		return 0;

	if (FUNC7(hdev) < 0) {
		FUNC1("Can't register HCI device");
		err = -ENODEV;
		goto err_register;
	}

	FUNC13(HCI_UART_REGISTERED, &hu->flags);

	return 0;

err_register:
	FUNC6(hdev);
err_alloc:
	FUNC4(HCI_UART_PROTO_READY, &hu->flags);
	p->close(hu);
err_open:
	FUNC10(hu->serdev);
	return err;
}