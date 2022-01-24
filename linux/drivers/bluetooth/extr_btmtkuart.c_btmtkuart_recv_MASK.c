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
typedef  unsigned char u8 ;
struct hci_dev {int dummy; } ;
struct btmtkuart_dev {int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btmtkuart_dev* FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  mtk_recv_pkts ; 
 unsigned char* FUNC6 (struct btmtkuart_dev*,unsigned char const*,int,int*) ; 

__attribute__((used)) static int FUNC7(struct hci_dev *hdev, const u8 *data, size_t count)
{
	struct btmtkuart_dev *bdev = FUNC5(hdev);
	const unsigned char *p_left = data, *p_h4;
	int sz_left = count, sz_h4, adv;
	int err;

	while (sz_left > 0) {
		/*  The serial data received from MT7622 BT controller is
		 *  at all time padded around with the STP header and tailer.
		 *
		 *  A full STP packet is looking like
		 *   -----------------------------------
		 *  | STP header  |  H:4   | STP tailer |
		 *   -----------------------------------
		 *  but it doesn't guarantee to contain a full H:4 packet which
		 *  means that it's possible for multiple STP packets forms a
		 *  full H:4 packet that means extra STP header + length doesn't
		 *  indicate a full H:4 frame, things can fragment. Whose length
		 *  recorded in STP header just shows up the most length the
		 *  H:4 engine can handle currently.
		 */

		p_h4 = FUNC6(bdev, p_left, sz_left, &sz_h4);
		if (!p_h4)
			break;

		adv = p_h4 - p_left;
		sz_left -= adv;
		p_left += adv;

		bdev->rx_skb = FUNC4(bdev->hdev, bdev->rx_skb, p_h4,
					   sz_h4, mtk_recv_pkts,
					   FUNC0(mtk_recv_pkts));
		if (FUNC1(bdev->rx_skb)) {
			err = FUNC2(bdev->rx_skb);
			FUNC3(bdev->hdev,
				   "Frame reassembly failed (%d)", err);
			bdev->rx_skb = NULL;
			return err;
		}

		sz_left -= sz_h4;
		p_left += sz_h4;
	}

	return 0;
}