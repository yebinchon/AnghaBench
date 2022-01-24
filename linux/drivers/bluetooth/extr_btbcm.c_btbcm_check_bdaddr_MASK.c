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
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_bd_addr {int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_BCM20702A0 ; 
 int /*<<< orphan*/  BDADDR_BCM20702A1 ; 
 int /*<<< orphan*/  BDADDR_BCM2076B1 ; 
 int /*<<< orphan*/  BDADDR_BCM4324B3 ; 
 int /*<<< orphan*/  BDADDR_BCM4330B1 ; 
 int /*<<< orphan*/  BDADDR_BCM43341B ; 
 int /*<<< orphan*/  BDADDR_BCM43430A0 ; 
 int /*<<< orphan*/  BDADDR_BCM4345C5 ; 
 int EIO ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_OP_READ_BD_ADDR ; 
 int /*<<< orphan*/  HCI_QUIRK_INVALID_BDADDR ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct hci_dev *hdev)
{
	struct hci_rp_read_bd_addr *bda;
	struct sk_buff *skb;

	skb = FUNC2(hdev, HCI_OP_READ_BD_ADDR, 0, NULL,
			     HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		int err = FUNC1(skb);
		FUNC4(hdev, "BCM: Reading device address failed (%d)", err);
		return err;
	}

	if (skb->len != sizeof(*bda)) {
		FUNC4(hdev, "BCM: Device address length mismatch");
		FUNC6(skb);
		return -EIO;
	}

	bda = (struct hci_rp_read_bd_addr *)skb->data;

	/* Check if the address indicates a controller with either an
	 * invalid or default address. In both cases the device needs
	 * to be marked as not having a valid address.
	 *
	 * The address 00:20:70:02:A0:00 indicates a BCM20702A0 controller
	 * with no configured address.
	 *
	 * The address 20:70:02:A0:00:00 indicates a BCM20702A1 controller
	 * with no configured address.
	 *
	 * The address 20:76:A0:00:56:79 indicates a BCM2076B1 controller
	 * with no configured address.
	 *
	 * The address 43:24:B3:00:00:00 indicates a BCM4324B3 controller
	 * with waiting for configuration state.
	 *
	 * The address 43:30:B1:00:00:00 indicates a BCM4330B1 controller
	 * with waiting for configuration state.
	 *
	 * The address 43:43:A0:12:1F:AC indicates a BCM43430A0 controller
	 * with no configured address.
	 */
	if (!FUNC3(&bda->bdaddr, BDADDR_BCM20702A0) ||
	    !FUNC3(&bda->bdaddr, BDADDR_BCM20702A1) ||
	    !FUNC3(&bda->bdaddr, BDADDR_BCM2076B1) ||
	    !FUNC3(&bda->bdaddr, BDADDR_BCM4324B3) ||
	    !FUNC3(&bda->bdaddr, BDADDR_BCM4330B1) ||
	    !FUNC3(&bda->bdaddr, BDADDR_BCM4345C5) ||
	    !FUNC3(&bda->bdaddr, BDADDR_BCM43430A0) ||
	    !FUNC3(&bda->bdaddr, BDADDR_BCM43341B)) {
		FUNC5(hdev, "BCM: Using default device address (%pMR)",
			    &bda->bdaddr);
		FUNC7(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks);
	}

	FUNC6(skb);

	return 0;
}