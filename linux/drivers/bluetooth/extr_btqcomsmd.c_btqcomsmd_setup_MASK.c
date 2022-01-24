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
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_OP_RESET ; 
 int /*<<< orphan*/  HCI_QUIRK_USE_BDADDR_PROPERTY ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_dev *hdev)
{
	struct sk_buff *skb;

	skb = FUNC2(hdev, HCI_OP_RESET, 0, NULL, HCI_INIT_TIMEOUT);
	if (FUNC0(skb))
		return FUNC1(skb);
	FUNC3(skb);

	/* Devices do not have persistent storage for BD address. Retrieve
	 * it from the firmware node property.
	 */
	FUNC4(HCI_QUIRK_USE_BDADDR_PROPERTY, &hdev->quirks);

	return 0;
}