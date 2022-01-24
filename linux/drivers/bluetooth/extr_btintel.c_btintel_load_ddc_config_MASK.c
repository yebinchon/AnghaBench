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
typedef  scalar_t__ const u8 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int size; scalar_t__ const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,scalar_t__ const,scalar_t__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

int FUNC8(struct hci_dev *hdev, const char *ddc_name)
{
	const struct firmware *fw;
	struct sk_buff *skb;
	const u8 *fw_ptr;
	int err;

	err = FUNC7(&fw, ddc_name, &hdev->dev);
	if (err < 0) {
		FUNC3(hdev, "Failed to load Intel DDC file %s (%d)",
			   ddc_name, err);
		return err;
	}

	FUNC4(hdev, "Found Intel DDC parameters: %s", ddc_name);

	fw_ptr = fw->data;

	/* DDC file contains one or more DDC structure which has
	 * Length (1 byte), DDC ID (2 bytes), and DDC value (Length - 2).
	 */
	while (fw->size > fw_ptr - fw->data) {
		u8 cmd_plen = fw_ptr[0] + sizeof(u8);

		skb = FUNC2(hdev, 0xfc8b, cmd_plen, fw_ptr,
				     HCI_INIT_TIMEOUT);
		if (FUNC0(skb)) {
			FUNC3(hdev, "Failed to send Intel_Write_DDC (%ld)",
				   FUNC1(skb));
			FUNC6(fw);
			return FUNC1(skb);
		}

		fw_ptr += cmd_plen;
		FUNC5(skb);
	}

	FUNC6(fw);

	FUNC4(hdev, "Applying Intel DDC parameters completed");

	return 0;
}