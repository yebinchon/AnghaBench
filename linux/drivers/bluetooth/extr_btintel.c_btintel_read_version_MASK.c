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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct intel_version {int dummy; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int EILSEQ ; 
 int /*<<< orphan*/  HCI_CMD_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_version*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct hci_dev *hdev, struct intel_version *ver)
{
	struct sk_buff *skb;

	skb = FUNC2(hdev, 0xfc05, 0, NULL, HCI_CMD_TIMEOUT);
	if (FUNC0(skb)) {
		FUNC3(hdev, "Reading Intel version information failed (%ld)",
			   FUNC1(skb));
		return FUNC1(skb);
	}

	if (skb->len != sizeof(*ver)) {
		FUNC3(hdev, "Intel version event size mismatch");
		FUNC4(skb);
		return -EILSEQ;
	}

	FUNC5(ver, skb->data, sizeof(*ver));

	FUNC4(skb);

	return 0;
}