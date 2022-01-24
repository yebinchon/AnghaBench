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
typedef  int /*<<< orphan*/  sync ;
struct hci_uart {int /*<<< orphan*/  hdev_flags; struct h5* priv; scalar_t__ serdev; } ;
struct h5 {int /*<<< orphan*/  timer; TYPE_1__* vnd; int /*<<< orphan*/  tx_win; int /*<<< orphan*/  unrel; int /*<<< orphan*/  rel; int /*<<< orphan*/  unack; struct hci_uart* hu; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* open ) (struct h5*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ H5_SYNC_TIMEOUT ; 
 int /*<<< orphan*/  H5_TX_WIN_MAX ; 
 int /*<<< orphan*/  HCI_UART_INIT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct hci_uart*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct h5*) ; 
 int /*<<< orphan*/  h5_timed_event ; 
 scalar_t__ jiffies ; 
 struct h5* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct h5* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct h5*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct hci_uart *hu)
{
	struct h5 *h5;
	const unsigned char sync[] = { 0x01, 0x7e };

	FUNC0("hu %p", hu);

	if (hu->serdev) {
		h5 = FUNC5(hu->serdev);
	} else {
		h5 = FUNC3(sizeof(*h5), GFP_KERNEL);
		if (!h5)
			return -ENOMEM;
	}

	hu->priv = h5;
	h5->hu = hu;

	FUNC7(&h5->unack);
	FUNC7(&h5->rel);
	FUNC7(&h5->unrel);

	FUNC2(h5);

	FUNC9(&h5->timer, h5_timed_event, 0);

	h5->tx_win = H5_TX_WIN_MAX;

	if (h5->vnd && h5->vnd->open)
		h5->vnd->open(h5);

	FUNC6(HCI_UART_INIT_PENDING, &hu->hdev_flags);

	/* Send initial sync request */
	FUNC1(hu, sync, sizeof(sync));
	FUNC4(&h5->timer, jiffies + H5_SYNC_TIMEOUT);

	return 0;
}