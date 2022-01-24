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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ QCA_DEBUG_HANDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hci_dev*,struct sk_buff*) ; 
 int FUNC2 (struct hci_dev*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct hci_dev *hdev, struct sk_buff *skb)
{
	/* We receive debug logs from chip as an ACL packets.
	 * Instead of sending the data to ACL to decode the
	 * received data, we are pushing them to the above layers
	 * as a diagnostic packet.
	 */
	if (FUNC0(skb->data) == QCA_DEBUG_HANDLE)
		return FUNC1(hdev, skb);

	return FUNC2(hdev, skb);
}