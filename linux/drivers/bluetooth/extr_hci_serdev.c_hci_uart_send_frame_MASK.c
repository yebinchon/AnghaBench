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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct hci_uart {TYPE_1__* proto; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enqueue ) (struct hci_uart*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_uart* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_uart *hu = FUNC1(hdev);

	FUNC0("%s: type %d len %d", hdev->name, FUNC2(skb),
	       skb->len);

	hu->proto->enqueue(hu, skb);

	FUNC3(hu);

	return 0;
}