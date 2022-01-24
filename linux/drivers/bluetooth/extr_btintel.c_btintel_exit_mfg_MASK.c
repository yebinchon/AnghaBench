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
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_CMD_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

int FUNC5(struct hci_dev *hdev, bool reset, bool patched)
{
	u8 param[] = { 0x00, 0x00 };
	struct sk_buff *skb;

	/* The 2nd command parameter specifies the manufacturing exit method:
	 * 0x00: Just disable the manufacturing mode (0x00).
	 * 0x01: Disable manufacturing mode and reset with patches deactivated.
	 * 0x02: Disable manufacturing mode and reset with patches activated.
	 */
	if (reset)
		param[1] |= patched ? 0x02 : 0x01;

	skb = FUNC2(hdev, 0xfc11, 2, param, HCI_CMD_TIMEOUT);
	if (FUNC0(skb)) {
		FUNC3(hdev, "Exiting manufacturer mode failed (%ld)",
			   FUNC1(skb));
		return FUNC1(skb);
	}
	FUNC4(skb);

	return 0;
}