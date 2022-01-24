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
typedef  int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int,int,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct hci_dev *hdev)
{
	static const u8 req[] = { 0x07 };
	struct sk_buff *skb;

	FUNC0("%s", hdev->name);

	/* Read revision string */
	skb = FUNC3(hdev, 0xfc0e, sizeof(req), req, HCI_INIT_TIMEOUT);
	if (FUNC1(skb))
		return FUNC2(skb);

	FUNC4(hdev, "%s", (char *)(skb->data + 1));

	FUNC5(hdev, "%s", skb->data + 1);

	FUNC6(skb);
	return 0;
}