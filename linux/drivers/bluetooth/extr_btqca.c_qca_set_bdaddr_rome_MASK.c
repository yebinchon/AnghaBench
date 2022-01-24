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
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDL_NVM_ACCESS_OPCODE ; 
 int EDL_NVM_ACCESS_SET_REQ_CMD ; 
 int /*<<< orphan*/  HCI_EV_VENDOR ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/  const*,int) ; 

int FUNC6(struct hci_dev *hdev, const bdaddr_t *bdaddr)
{
	struct sk_buff *skb;
	u8 cmd[9];
	int err;

	cmd[0] = EDL_NVM_ACCESS_SET_REQ_CMD;
	cmd[1] = 0x02; 			/* TAG ID */
	cmd[2] = sizeof(bdaddr_t);	/* size */
	FUNC5(cmd + 3, bdaddr, sizeof(bdaddr_t));
	skb = FUNC2(hdev, EDL_NVM_ACCESS_OPCODE, sizeof(cmd), cmd,
				HCI_EV_VENDOR, HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		err = FUNC1(skb);
		FUNC3(hdev, "QCA Change address command failed (%d)", err);
		return err;
	}

	FUNC4(skb);

	return 0;
}