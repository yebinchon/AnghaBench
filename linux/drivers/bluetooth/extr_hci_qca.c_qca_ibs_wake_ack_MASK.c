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
struct hci_uart {int dummy; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_IBS_WAKE_ACK ; 
 int /*<<< orphan*/  FUNC1 (struct hci_uart*) ; 
 struct hci_uart* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_uart *hu = FUNC2(hdev);

	FUNC0("hu %p recv hci ibs cmd 0x%x", hu, HCI_IBS_WAKE_ACK);

	FUNC1(hu);

	FUNC3(skb);
	return 0;
}