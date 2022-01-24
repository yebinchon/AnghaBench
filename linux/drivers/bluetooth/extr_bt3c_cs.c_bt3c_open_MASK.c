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
struct hci_dev {int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  bus; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct bt3c_info {struct hci_dev* hdev; TYPE_1__* p_dev; int /*<<< orphan*/ * rx_skb; scalar_t__ rx_count; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  txq; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_PCCARD ; 
 int /*<<< orphan*/  RECV_WAIT_PACKET_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bt3c_hci_close ; 
 int /*<<< orphan*/  bt3c_hci_flush ; 
 int /*<<< orphan*/  bt3c_hci_open ; 
 int /*<<< orphan*/  bt3c_hci_send_frame ; 
 int FUNC2 (struct bt3c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct bt3c_info*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct bt3c_info *info)
{
	const struct firmware *firmware;
	struct hci_dev *hdev;
	int err;

	FUNC11(&(info->lock));

	FUNC10(&(info->txq));

	info->rx_state = RECV_WAIT_PACKET_TYPE;
	info->rx_count = 0;
	info->rx_skb = NULL;

	/* Initialize HCI device */
	hdev = FUNC3();
	if (!hdev) {
		FUNC0("Can't allocate HCI device");
		return -ENOMEM;
	}

	info->hdev = hdev;

	hdev->bus = HCI_PCCARD;
	FUNC6(hdev, info);
	FUNC1(hdev, &info->p_dev->dev);

	hdev->open  = bt3c_hci_open;
	hdev->close = bt3c_hci_close;
	hdev->flush = bt3c_hci_flush;
	hdev->send  = bt3c_hci_send_frame;

	/* Load firmware */
	err = FUNC9(&firmware, "BT3CPCC.bin", &info->p_dev->dev);
	if (err < 0) {
		FUNC0("Firmware request failed");
		goto error;
	}

	err = FUNC2(info, firmware->data, firmware->size);

	FUNC8(firmware);

	if (err < 0) {
		FUNC0("Firmware loading failed");
		goto error;
	}

	/* Timeout before it is safe to send the first HCI packet */
	FUNC7(1000);

	/* Register HCI device */
	err = FUNC5(hdev);
	if (err < 0) {
		FUNC0("Can't register HCI device");
		goto error;
	}

	return 0;

error:
	info->hdev = NULL;
	FUNC4(hdev);
	return err;
}