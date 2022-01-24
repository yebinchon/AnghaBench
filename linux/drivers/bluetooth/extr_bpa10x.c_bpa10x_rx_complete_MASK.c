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
struct urb {int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  pipe; int /*<<< orphan*/  status; struct hci_dev* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  err_rx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct bpa10x_data {int /*<<< orphan*/  rx_anchor; int /*<<< orphan*/ ** rx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bpa10x_recv_pkts ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpa10x_data* FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static void FUNC11(struct urb *urb)
{
	struct hci_dev *hdev = urb->context;
	struct bpa10x_data *data = FUNC5(hdev);
	int err;

	FUNC1("%s urb %p status %d count %d", hdev->name,
					urb, urb->status, urb->actual_length);

	if (!FUNC6(HCI_RUNNING, &hdev->flags))
		return;

	if (urb->status == 0) {
		bool idx = FUNC8(urb->pipe);

		data->rx_skb[idx] = FUNC4(hdev, data->rx_skb[idx],
						urb->transfer_buffer,
						urb->actual_length,
						bpa10x_recv_pkts,
						FUNC0(bpa10x_recv_pkts));
		if (FUNC2(data->rx_skb[idx])) {
			FUNC3(hdev, "corrupted event packet");
			hdev->stat.err_rx++;
			data->rx_skb[idx] = NULL;
		}
	}

	FUNC7(urb, &data->rx_anchor);

	err = FUNC9(urb, GFP_ATOMIC);
	if (err < 0) {
		FUNC3(hdev, "urb %p failed to resubmit (%d)", urb, -err);
		FUNC10(urb);
	}
}