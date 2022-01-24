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
 int /*<<< orphan*/  BDADDR_INTEL ; 
 int EIO ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_OP_READ_BD_ADDR ; 
 int /*<<< orphan*/  HCI_QUIRK_INVALID_BDADDR ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct hci_dev *hdev)
{
	struct hci_rp_read_bd_addr *bda;
	struct sk_buff *skb;

	skb = FUNC2(hdev, HCI_OP_READ_BD_ADDR, 0, NULL,
			     HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		int err = FUNC1(skb);
		FUNC4(hdev, "Reading Intel device address failed (%d)",
			   err);
		return err;
	}

	if (skb->len != sizeof(*bda)) {
		FUNC4(hdev, "Intel device address length mismatch");
		FUNC5(skb);
		return -EIO;
	}

	bda = (struct hci_rp_read_bd_addr *)skb->data;

	/* For some Intel based controllers, the default Bluetooth device
	 * address 00:03:19:9E:8B:00 can be found. These controllers are
	 * fully operational, but have the danger of duplicate addresses
	 * and that in turn can cause problems with Bluetooth operation.
	 */
	if (!FUNC3(&bda->bdaddr, BDADDR_INTEL)) {
		FUNC4(hdev, "Found Intel default device address (%pMR)",
			   &bda->bdaddr);
		FUNC6(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks);
	}

	FUNC5(skb);

	return 0;
}