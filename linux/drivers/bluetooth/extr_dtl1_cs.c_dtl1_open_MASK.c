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
struct dtl1_info {int ri_latch; struct hci_dev* hdev; int /*<<< orphan*/  lock; TYPE_2__* p_dev; int /*<<< orphan*/  tx_state; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_count; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  txq; } ;
struct TYPE_4__ {TYPE_1__** resource; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_PCCARD ; 
 int /*<<< orphan*/  NSHL ; 
 int /*<<< orphan*/  RECV_WAIT_NSH ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int UART_IER_THRI ; 
 scalar_t__ UART_LCR ; 
 int UART_LCR_WLEN8 ; 
 scalar_t__ UART_MCR ; 
 int UART_MCR_DTR ; 
 int UART_MCR_OUT2 ; 
 int UART_MCR_RTS ; 
 scalar_t__ UART_MSR ; 
 int UART_MSR_RI ; 
 int /*<<< orphan*/  XMIT_WAITING ; 
 int /*<<< orphan*/  dtl1_hci_close ; 
 int /*<<< orphan*/  dtl1_hci_flush ; 
 int /*<<< orphan*/  dtl1_hci_open ; 
 int /*<<< orphan*/  dtl1_hci_send_frame ; 
 struct hci_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,struct dtl1_info*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct dtl1_info *info)
{
	unsigned long flags;
	unsigned int iobase = info->p_dev->resource[0]->start;
	struct hci_dev *hdev;

	FUNC11(&(info->lock));

	FUNC10(&(info->txq));

	info->rx_state = RECV_WAIT_NSH;
	info->rx_count = NSHL;
	info->rx_skb = NULL;

	FUNC9(XMIT_WAITING, &(info->tx_state));

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

	hdev->open  = dtl1_hci_open;
	hdev->close = dtl1_hci_close;
	hdev->flush = dtl1_hci_flush;
	hdev->send  = dtl1_hci_send_frame;

	FUNC12(&(info->lock), flags);

	/* Reset UART */
	FUNC8(0, iobase + UART_MCR);

	/* Turn off interrupts */
	FUNC8(0, iobase + UART_IER);

	/* Initialize UART */
	FUNC8(UART_LCR_WLEN8, iobase + UART_LCR);	/* Reset DLAB */
	FUNC8((UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2), iobase + UART_MCR);

	info->ri_latch = FUNC6(info->p_dev->resource[0]->start + UART_MSR)
				& UART_MSR_RI;

	/* Turn on interrupts */
	FUNC8(UART_IER_RLSI | UART_IER_RDI | UART_IER_THRI, iobase + UART_IER);

	FUNC13(&(info->lock), flags);

	/* Timeout before it is safe to send the first HCI packet */
	FUNC7(2000);

	/* Register HCI device */
	if (FUNC4(hdev) < 0) {
		FUNC0("Can't register HCI device");
		info->hdev = NULL;
		FUNC3(hdev);
		return -ENODEV;
	}

	return 0;
}