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
struct hci_dev {int dummy; } ;
struct btmtkuart_dev {int stp_cursor; scalar_t__ stp_dlen; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  txq; int /*<<< orphan*/  serdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct btmtkuart_dev* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_dev *hdev)
{
	struct btmtkuart_dev *bdev = FUNC1(hdev);

	/* Flush any pending characters */
	FUNC3(bdev->serdev);
	FUNC4(&bdev->txq);

	FUNC0(&bdev->tx_work);

	FUNC2(bdev->rx_skb);
	bdev->rx_skb = NULL;

	bdev->stp_cursor = 2;
	bdev->stp_dlen = 0;

	return 0;
}