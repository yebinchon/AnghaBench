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
 int /*<<< orphan*/  HCI_EV_CMD_COMPLETE ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  QCA_PRE_SHUTDOWN_CMD ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

int FUNC6(struct hci_dev *hdev)
{
	struct sk_buff *skb;
	int err;

	FUNC3(hdev, "QCA pre shutdown cmd");

	skb = FUNC2(hdev, QCA_PRE_SHUTDOWN_CMD, 0,
				NULL, HCI_EV_CMD_COMPLETE, HCI_INIT_TIMEOUT);

	if (FUNC0(skb)) {
		err = FUNC1(skb);
		FUNC4(hdev, "QCA preshutdown_cmd failed (%d)", err);
		return err;
	}

	FUNC5(skb);

	return 0;
}