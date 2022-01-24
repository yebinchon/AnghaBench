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
struct hci_dev {int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  bus; } ;
struct bluecard_info {int ctrl_reg; struct hci_dev* hdev; int /*<<< orphan*/  txq; int /*<<< orphan*/  hw_state; int /*<<< orphan*/  tx_state; TYPE_2__* p_dev; int /*<<< orphan*/ * rx_skb; scalar_t__ rx_count; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CARD_HAS_ACTIVITY_LED ; 
 int /*<<< orphan*/  CARD_HAS_PCCARD_ID ; 
 int /*<<< orphan*/  CARD_HAS_POWER_LED ; 
 int /*<<< orphan*/  CARD_READY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_PCCARD ; 
 int /*<<< orphan*/  RECV_WAIT_PACKET_TYPE ; 
 unsigned int REG_COMMAND ; 
 int REG_COMMAND_RX_BUF_ONE ; 
 int REG_COMMAND_RX_BUF_TWO ; 
 unsigned int REG_CONTROL ; 
 int REG_CONTROL_BT_ON ; 
 int REG_CONTROL_BT_RESET ; 
 int REG_CONTROL_BT_RES_PU ; 
 int REG_CONTROL_CARD_RESET ; 
 int REG_CONTROL_INTERRUPT ; 
 int REG_CONTROL_RTS ; 
 unsigned int REG_INTERRUPT ; 
 unsigned int REG_RX_CONTROL ; 
 int RTS_LEVEL_SHIFT_BITS ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XMIT_BUF_ONE_READY ; 
 int /*<<< orphan*/  XMIT_BUF_TWO_READY ; 
 int /*<<< orphan*/  XMIT_SENDING_READY ; 
 int /*<<< orphan*/  bluecard_activity_led_timeout ; 
 int /*<<< orphan*/  bluecard_hci_close ; 
 int /*<<< orphan*/  bluecard_hci_flush ; 
 int /*<<< orphan*/  bluecard_hci_open ; 
 int /*<<< orphan*/  bluecard_hci_send_frame ; 
 struct hci_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,struct bluecard_info*) ; 
 unsigned char FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct bluecard_info *info)
{
	unsigned int iobase = info->p_dev->resource[0]->start;
	struct hci_dev *hdev;
	unsigned char id;

	FUNC12(&(info->lock));

	FUNC13(&info->timer, bluecard_activity_led_timeout, 0);

	FUNC10(&(info->txq));

	info->rx_state = RECV_WAIT_PACKET_TYPE;
	info->rx_count = 0;
	info->rx_skb = NULL;

	/* Initialize HCI device */
	hdev = FUNC2();
	if (!hdev) {
		FUNC0("Can't allocate HCI device");
		return -ENOMEM;
	}

	info->hdev = hdev;

	hdev->bus = HCI_PCCARD;
	FUNC5(hdev, info);
	FUNC1(hdev, &info->p_dev->dev);

	hdev->open  = bluecard_hci_open;
	hdev->close = bluecard_hci_close;
	hdev->flush = bluecard_hci_flush;
	hdev->send  = bluecard_hci_send_frame;

	id = FUNC6(iobase + 0x30);

	if ((id & 0x0f) == 0x02)
		FUNC9(CARD_HAS_PCCARD_ID, &(info->hw_state));

	if (id & 0x10)
		FUNC9(CARD_HAS_POWER_LED, &(info->hw_state));

	if (id & 0x20)
		FUNC9(CARD_HAS_ACTIVITY_LED, &(info->hw_state));

	/* Reset card */
	info->ctrl_reg = REG_CONTROL_BT_RESET | REG_CONTROL_CARD_RESET;
	FUNC8(info->ctrl_reg, iobase + REG_CONTROL);

	/* Turn FPGA off */
	FUNC8(0x80, iobase + 0x30);

	/* Wait some time */
	FUNC7(10);

	/* Turn FPGA on */
	FUNC8(0x00, iobase + 0x30);

	/* Activate card */
	info->ctrl_reg = REG_CONTROL_BT_ON | REG_CONTROL_BT_RES_PU;
	FUNC8(info->ctrl_reg, iobase + REG_CONTROL);

	/* Enable interrupt */
	FUNC8(0xff, iobase + REG_INTERRUPT);
	info->ctrl_reg |= REG_CONTROL_INTERRUPT;
	FUNC8(info->ctrl_reg, iobase + REG_CONTROL);

	if ((id & 0x0f) == 0x03) {
		/* Disable RTS */
		info->ctrl_reg |= REG_CONTROL_RTS;
		FUNC8(info->ctrl_reg, iobase + REG_CONTROL);

		/* Set baud rate */
		info->ctrl_reg |= 0x03;
		FUNC8(info->ctrl_reg, iobase + REG_CONTROL);

		/* Enable RTS */
		info->ctrl_reg &= ~REG_CONTROL_RTS;
		FUNC8(info->ctrl_reg, iobase + REG_CONTROL);

		FUNC9(XMIT_BUF_ONE_READY, &(info->tx_state));
		FUNC9(XMIT_BUF_TWO_READY, &(info->tx_state));
		FUNC9(XMIT_SENDING_READY, &(info->tx_state));
	}

	/* Start the RX buffers */
	FUNC8(REG_COMMAND_RX_BUF_ONE, iobase + REG_COMMAND);
	FUNC8(REG_COMMAND_RX_BUF_TWO, iobase + REG_COMMAND);

	/* Signal that the hardware is ready */
	FUNC9(CARD_READY, &(info->hw_state));

	/* Drop TX queue */
	FUNC11(&(info->txq));

	/* Control the point at which RTS is enabled */
	FUNC8((0x0f << RTS_LEVEL_SHIFT_BITS) | 1, iobase + REG_RX_CONTROL);

	/* Timeout before it is safe to send the first HCI packet */
	FUNC7(1250);

	/* Register HCI device */
	if (FUNC4(hdev) < 0) {
		FUNC0("Can't register HCI device");
		info->hdev = NULL;
		FUNC3(hdev);
		return -ENODEV;
	}

	return 0;
}