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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;
struct hci_command_hdr {size_t plen; int /*<<< orphan*/  opcode; } ;
struct firmware {size_t size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(struct hci_dev *hdev, const struct firmware *fw)
{
	const struct hci_command_hdr *cmd;
	const u8 *fw_ptr;
	size_t fw_size;
	struct sk_buff *skb;
	u16 opcode;
	int err = 0;

	/* Start Download */
	skb = FUNC2(hdev, 0xfc2e, 0, NULL, HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		err = FUNC1(skb);
		FUNC3(hdev, "BCM: Download Minidrv command failed (%d)",
			   err);
		goto done;
	}
	FUNC4(skb);

	/* 50 msec delay after Download Minidrv completes */
	FUNC6(50);

	fw_ptr = fw->data;
	fw_size = fw->size;

	while (fw_size >= sizeof(*cmd)) {
		const u8 *cmd_param;

		cmd = (struct hci_command_hdr *)fw_ptr;
		fw_ptr += sizeof(*cmd);
		fw_size -= sizeof(*cmd);

		if (fw_size < cmd->plen) {
			FUNC3(hdev, "BCM: Patch is corrupted");
			err = -EINVAL;
			goto done;
		}

		cmd_param = fw_ptr;
		fw_ptr += cmd->plen;
		fw_size -= cmd->plen;

		opcode = FUNC5(cmd->opcode);

		skb = FUNC2(hdev, opcode, cmd->plen, cmd_param,
				     HCI_INIT_TIMEOUT);
		if (FUNC0(skb)) {
			err = FUNC1(skb);
			FUNC3(hdev, "BCM: Patch command %04x failed (%d)",
				   opcode, err);
			goto done;
		}
		FUNC4(skb);
	}

	/* 250 msec delay after Launch Ram completes */
	FUNC6(250);

done:
	return err;
}