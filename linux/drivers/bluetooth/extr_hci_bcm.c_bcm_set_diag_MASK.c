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
struct hci_uart {struct bcm_data* priv; } ;
struct hci_dev {int /*<<< orphan*/  flags; } ;
struct bcm_data {int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 int BCM_LM_DIAG_PKT ; 
 int ENETDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct hci_uart* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev, bool enable)
{
	struct hci_uart *hu = FUNC1(hdev);
	struct bcm_data *bcm = hu->priv;
	struct sk_buff *skb;

	if (!FUNC5(HCI_RUNNING, &hdev->flags))
		return -ENETDOWN;

	skb = FUNC0(3, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	FUNC3(skb, BCM_LM_DIAG_PKT);
	FUNC3(skb, 0xf0);
	FUNC3(skb, enable);

	FUNC4(&bcm->txq, skb);
	FUNC2(hu);

	return 0;
}