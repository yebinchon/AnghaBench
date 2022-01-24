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
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_OP_RESET ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

int FUNC5(struct hci_dev *hdev)
{
	struct sk_buff *skb;
	int ret;

	/* According to the vendor driver, BT must be reset on close to avoid
	 * firmware crash.
	 */
	skb = FUNC2(hdev, HCI_OP_RESET, 0, NULL, HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		ret = FUNC1(skb);
		FUNC3(hdev, "HCI reset during shutdown failed");
		return ret;
	}
	FUNC4(skb);

	return 0;
}