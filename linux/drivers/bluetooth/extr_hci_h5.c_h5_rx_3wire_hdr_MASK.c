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
struct hci_uart {TYPE_2__* hdev; struct h5* priv; } ;
struct h5 {scalar_t__ tx_ack; scalar_t__ state; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  rx_func; TYPE_1__* rx_skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {unsigned char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ H5_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*) ; 
 scalar_t__ FUNC5 (unsigned char const*) ; 
 scalar_t__ FUNC6 (unsigned char const*) ; 
 scalar_t__ FUNC7 (unsigned char const*) ; 
 scalar_t__ HCI_3WIRE_LINK_PKT ; 
 int /*<<< orphan*/  FUNC8 (struct h5*) ; 
 int /*<<< orphan*/  h5_rx_payload ; 

__attribute__((used)) static int FUNC9(struct hci_uart *hu, unsigned char c)
{
	struct h5 *h5 = hu->priv;
	const unsigned char *hdr = h5->rx_skb->data;

	FUNC0("%s rx: seq %u ack %u crc %u rel %u type %u len %u",
	       hu->hdev->name, FUNC7(hdr), FUNC2(hdr),
	       FUNC3(hdr), FUNC6(hdr), FUNC5(hdr),
	       FUNC4(hdr));

	if (((hdr[0] + hdr[1] + hdr[2] + hdr[3]) & 0xff) != 0xff) {
		FUNC1("Invalid header checksum");
		FUNC8(h5);
		return 0;
	}

	if (FUNC6(hdr) && FUNC7(hdr) != h5->tx_ack) {
		FUNC1("Out-of-order packet arrived (%u != %u)",
		       FUNC7(hdr), h5->tx_ack);
		FUNC8(h5);
		return 0;
	}

	if (h5->state != H5_ACTIVE &&
	    FUNC5(hdr) != HCI_3WIRE_LINK_PKT) {
		FUNC1("Non-link packet received in non-active state");
		FUNC8(h5);
		return 0;
	}

	h5->rx_func = h5_rx_payload;
	h5->rx_pending = FUNC4(hdr);

	return 0;
}