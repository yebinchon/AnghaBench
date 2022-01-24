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
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int /*<<< orphan*/  quirks; int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;
typedef  int /*<<< orphan*/  fw_name ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_QUIRK_STRICT_DUPLICATE_FILTER ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int FUNC4 (struct hci_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,struct firmware const*) ; 
 struct sk_buff* FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct hci_dev *hdev)
{
	char fw_name[64];
	const struct firmware *fw;
	struct sk_buff *skb;
	int err;

	/* Initialize */
	err = FUNC4(hdev, fw_name, sizeof(fw_name), false);
	if (err)
		return err;

	err = FUNC9(&fw, fw_name, &hdev->dev);
	if (err < 0) {
		FUNC2(hdev, "BCM: Patch %s not found", fw_name);
		goto done;
	}

	FUNC5(hdev, fw);

	FUNC8(fw);

	/* Re-initialize */
	err = FUNC4(hdev, fw_name, sizeof(fw_name), true);
	if (err)
		return err;

	/* Read Local Name */
	skb = FUNC6(hdev);
	if (FUNC0(skb))
		return FUNC1(skb);

	FUNC2(hdev, "%s", (char *)(skb->data + 1));
	FUNC7(skb);

done:
	FUNC3(hdev);

	FUNC10(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);

	return 0;
}