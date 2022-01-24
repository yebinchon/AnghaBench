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
struct sk_buff {char** data; } ;
struct hci_dev {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_QUIRK_STRICT_DUPLICATE_FILTER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,char*,...) ; 
 struct sk_buff* FUNC2 (struct hci_dev*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*) ; 
 struct sk_buff* FUNC4 (struct hci_dev*) ; 
 struct sk_buff* FUNC5 (struct hci_dev*) ; 
 int FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct hci_dev *hdev)
{
	struct sk_buff *skb;
	int err;

	/* Reset */
	err = FUNC6(hdev);
	if (err)
		return err;

	/* Read Verbose Config Version Info */
	skb = FUNC5(hdev);
	if (!FUNC0(skb)) {
		FUNC1(hdev, "BCM: chip id %u build %4.4u",
			    skb->data[1], FUNC7(skb->data + 5));
		FUNC8(skb);
	}

	/* Read USB Product Info */
	skb = FUNC4(hdev);
	if (!FUNC0(skb)) {
		FUNC1(hdev, "BCM: product %4.4x:%4.4x",
			    FUNC7(skb->data + 1),
			    FUNC7(skb->data + 3));
		FUNC8(skb);
	}

	/* Read Controller Features */
	skb = FUNC2(hdev);
	if (!FUNC0(skb)) {
		FUNC1(hdev, "BCM: features 0x%2.2x", skb->data[1]);
		FUNC8(skb);
	}

	/* Read Local Name */
	skb = FUNC3(hdev);
	if (!FUNC0(skb)) {
		FUNC1(hdev, "%s", (char *)(skb->data + 1));
		FUNC8(skb);
	}

	FUNC9(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);

	return 0;
}