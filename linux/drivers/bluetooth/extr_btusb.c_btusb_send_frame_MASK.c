#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EILSEQ ; 
 int ENODEV ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  SCO_LINK ; 
 struct urb* FUNC3 (struct hci_dev*,struct sk_buff*) ; 
 struct urb* FUNC4 (struct hci_dev*,struct sk_buff*) ; 
 struct urb* FUNC5 (struct hci_dev*,struct sk_buff*) ; 
 int FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct hci_dev*,struct urb*) ; 
 int FUNC9 (struct hci_dev*,struct urb*) ; 

__attribute__((used)) static int FUNC10(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct urb *urb;

	FUNC0("%s", hdev->name);

	switch (FUNC7(skb)) {
	case HCI_COMMAND_PKT:
		urb = FUNC4(hdev, skb);
		if (FUNC1(urb))
			return FUNC2(urb);

		hdev->stat.cmd_tx++;
		return FUNC8(hdev, urb);

	case HCI_ACLDATA_PKT:
		urb = FUNC3(hdev, skb);
		if (FUNC1(urb))
			return FUNC2(urb);

		hdev->stat.acl_tx++;
		return FUNC8(hdev, urb);

	case HCI_SCODATA_PKT:
		if (FUNC6(hdev, SCO_LINK) < 1)
			return -ENODEV;

		urb = FUNC5(hdev, skb);
		if (FUNC1(urb))
			return FUNC2(urb);

		hdev->stat.sco_tx++;
		return FUNC9(hdev, urb);
	}

	return -EILSEQ;
}