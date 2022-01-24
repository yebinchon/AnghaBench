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
struct h5 {scalar_t__ state; unsigned char tx_win; void* sleep; TYPE_1__* rx_skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {unsigned char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ H5_ACTIVE ; 
 void* H5_AWAKE ; 
 int FUNC1 (unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 scalar_t__ H5_INITIALIZED ; 
 void* H5_SLEEPING ; 
 scalar_t__ HCI_3WIRE_LINK_PKT ; 
 unsigned char FUNC3 (struct h5*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_uart*) ; 
 scalar_t__ FUNC8 (unsigned char const*,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC9(struct hci_uart *hu)
{
	struct h5 *h5 = hu->priv;
	const unsigned char sync_req[] = { 0x01, 0x7e };
	const unsigned char sync_rsp[] = { 0x02, 0x7d };
	unsigned char conf_req[3] = { 0x03, 0xfc };
	const unsigned char conf_rsp[] = { 0x04, 0x7b };
	const unsigned char wakeup_req[] = { 0x05, 0xfa };
	const unsigned char woken_req[] = { 0x06, 0xf9 };
	const unsigned char sleep_req[] = { 0x07, 0x78 };
	const unsigned char *hdr = h5->rx_skb->data;
	const unsigned char *data = &h5->rx_skb->data[4];

	FUNC0("%s", hu->hdev->name);

	if (FUNC2(hdr) != HCI_3WIRE_LINK_PKT)
		return;

	if (FUNC1(hdr) < 2)
		return;

	conf_req[2] = FUNC3(h5);

	if (FUNC8(data, sync_req, 2) == 0) {
		if (h5->state == H5_ACTIVE)
			FUNC5(hu);
		FUNC4(hu, sync_rsp, 2);
	} else if (FUNC8(data, sync_rsp, 2) == 0) {
		if (h5->state == H5_ACTIVE)
			FUNC5(hu);
		h5->state = H5_INITIALIZED;
		FUNC4(hu, conf_req, 3);
	} else if (FUNC8(data, conf_req, 2) == 0) {
		FUNC4(hu, conf_rsp, 2);
		FUNC4(hu, conf_req, 3);
	} else if (FUNC8(data, conf_rsp, 2) == 0) {
		if (FUNC1(hdr) > 2)
			h5->tx_win = (data[2] & 0x07);
		FUNC0("Three-wire init complete. tx_win %u", h5->tx_win);
		h5->state = H5_ACTIVE;
		FUNC6(hu);
		return;
	} else if (FUNC8(data, sleep_req, 2) == 0) {
		FUNC0("Peer went to sleep");
		h5->sleep = H5_SLEEPING;
		return;
	} else if (FUNC8(data, woken_req, 2) == 0) {
		FUNC0("Peer woke up");
		h5->sleep = H5_AWAKE;
	} else if (FUNC8(data, wakeup_req, 2) == 0) {
		FUNC0("Peer requested wakeup");
		FUNC4(hu, woken_req, 2);
		h5->sleep = H5_AWAKE;
	} else {
		FUNC0("Link Control: 0x%02hhx 0x%02hhx", data[0], data[1]);
		return;
	}

	FUNC7(hu);
}