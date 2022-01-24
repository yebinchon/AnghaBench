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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int u32 ;
struct hci_dev {int dummy; } ;
struct hci_command_hdr {scalar_t__ plen; int /*<<< orphan*/  opcode; } ;
struct firmware {int size; int /*<<< orphan*/  const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,int) ; 
 int FUNC2 (struct hci_dev*,int,int,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct hci_dev *hdev, const struct firmware *fw,
			      u32 *boot_param)
{
	int err;
	const u8 *fw_ptr;
	u32 frag_len;

	/* Start the firmware download transaction with the Init fragment
	 * represented by the 128 bytes of CSS header.
	 */
	err = FUNC2(hdev, 0x00, 128, fw->data);
	if (err < 0) {
		FUNC1(hdev, "Failed to send firmware header (%d)", err);
		goto done;
	}

	/* Send the 256 bytes of public key information from the firmware
	 * as the PKey fragment.
	 */
	err = FUNC2(hdev, 0x03, 256, fw->data + 128);
	if (err < 0) {
		FUNC1(hdev, "Failed to send firmware pkey (%d)", err);
		goto done;
	}

	/* Send the 256 bytes of signature information from the firmware
	 * as the Sign fragment.
	 */
	err = FUNC2(hdev, 0x02, 256, fw->data + 388);
	if (err < 0) {
		FUNC1(hdev, "Failed to send firmware signature (%d)", err);
		goto done;
	}

	fw_ptr = fw->data + 644;
	frag_len = 0;

	while (fw_ptr - fw->data < fw->size) {
		struct hci_command_hdr *cmd = (void *)(fw_ptr + frag_len);

		/* Each SKU has a different reset parameter to use in the
		 * HCI_Intel_Reset command and it is embedded in the firmware
		 * data. So, instead of using static value per SKU, check
		 * the firmware data and save it for later use.
		 */
		if (FUNC4(cmd->opcode) == 0xfc0e) {
			/* The boot parameter is the first 32-bit value
			 * and rest of 3 octets are reserved.
			 */
			*boot_param = FUNC3(fw_ptr + sizeof(*cmd));

			FUNC0(hdev, "boot_param=0x%x", *boot_param);
		}

		frag_len += sizeof(*cmd) + cmd->plen;

		/* The parameter length of the secure send command requires
		 * a 4 byte alignment. It happens so that the firmware file
		 * contains proper Intel_NOP commands to align the fragments
		 * as needed.
		 *
		 * Send set of commands with 4 byte alignment from the
		 * firmware data buffer as a single Data fragement.
		 */
		if (!(frag_len % 4)) {
			err = FUNC2(hdev, 0x01, frag_len, fw_ptr);
			if (err < 0) {
				FUNC1(hdev,
					   "Failed to send firmware data (%d)",
					   err);
				goto done;
			}

			fw_ptr += frag_len;
			frag_len = 0;
		}
	}

done:
	return err;
}