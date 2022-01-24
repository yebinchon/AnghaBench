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
struct hci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,char*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*) ; 
 struct sk_buff* FUNC4 (struct hci_dev*) ; 
 struct sk_buff* FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct hci_dev *hdev)
{
	struct sk_buff *skb;

	/* Read Verbose Config Version Info */
	skb = FUNC5(hdev);
	if (FUNC0(skb))
		return FUNC1(skb);

	FUNC2(hdev, "BCM: chip id %u", skb->data[1]);
	FUNC6(skb);

	/* Read Controller Features */
	skb = FUNC3(hdev);
	if (FUNC0(skb))
		return FUNC1(skb);

	FUNC2(hdev, "BCM: features 0x%2.2x", skb->data[1]);
	FUNC6(skb);

	/* Read Local Name */
	skb = FUNC4(hdev);
	if (FUNC0(skb))
		return FUNC1(skb);

	FUNC2(hdev, "%s", (char *)(skb->data + 1));
	FUNC6(skb);

	return 0;
}