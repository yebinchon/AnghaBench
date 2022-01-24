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
struct hci_rp_read_local_version {int /*<<< orphan*/  lmp_subver; int /*<<< orphan*/  manufacturer; } ;
struct hci_dev {int /*<<< orphan*/  quirks; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_VERSION ; 
 int /*<<< orphan*/  HCI_QUIRK_BROKEN_STORED_LINK_KEY ; 
 int /*<<< orphan*/  HCI_QUIRK_RESET_ON_CLOSE ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hci_dev *hdev)
{
	struct hci_rp_read_local_version *rp;
	struct sk_buff *skb;

	FUNC0("%s", hdev->name);

	skb = FUNC3(hdev, HCI_OP_READ_LOCAL_VERSION, 0, NULL,
			     HCI_INIT_TIMEOUT);
	if (FUNC1(skb)) {
		int err = FUNC2(skb);
		FUNC4(hdev, "CSR: Local version failed (%d)", err);
		return err;
	}

	if (skb->len != sizeof(struct hci_rp_read_local_version)) {
		FUNC4(hdev, "CSR: Local version length mismatch");
		FUNC6(skb);
		return -EIO;
	}

	rp = (struct hci_rp_read_local_version *)skb->data;

	/* Detect controllers which aren't real CSR ones. */
	if (FUNC7(rp->manufacturer) != 10 ||
	    FUNC7(rp->lmp_subver) == 0x0c5c) {
		/* Clear the reset quirk since this is not an actual
		 * early Bluetooth 1.1 device from CSR.
		 */
		FUNC5(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

		/* These fake CSR controllers have all a broken
		 * stored link key handling and so just disable it.
		 */
		FUNC8(HCI_QUIRK_BROKEN_STORED_LINK_KEY, &hdev->quirks);
	}

	FUNC6(skb);

	return 0;
}