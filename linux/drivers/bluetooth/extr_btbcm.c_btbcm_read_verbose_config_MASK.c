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
struct sk_buff {int len; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct hci_dev *hdev)
{
	struct sk_buff *skb;

	skb = FUNC3(hdev, 0xfc79, 0, NULL, HCI_INIT_TIMEOUT);
	if (FUNC1(skb)) {
		FUNC4(hdev, "BCM: Read verbose config info failed (%ld)",
			   FUNC2(skb));
		return skb;
	}

	if (skb->len != 7) {
		FUNC4(hdev, "BCM: Verbose config length mismatch");
		FUNC5(skb);
		return FUNC0(-EIO);
	}

	return skb;
}