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
struct sk_buff {int len; scalar_t__ data; } ;
struct rtl_rom_version_evt {int /*<<< orphan*/  version; int /*<<< orphan*/  status; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev, u8 *version)
{
	struct rtl_rom_version_evt *rom_version;
	struct sk_buff *skb;

	/* Read RTL ROM version command */
	skb = FUNC2(hdev, 0xfc6d, 0, NULL, HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		FUNC4(hdev, "Read ROM version failed (%ld)",
			    FUNC1(skb));
		return FUNC1(skb);
	}

	if (skb->len != sizeof(*rom_version)) {
		FUNC4(hdev, "version event length mismatch");
		FUNC3(skb);
		return -EIO;
	}

	rom_version = (struct rtl_rom_version_evt *)skb->data;
	FUNC5(hdev, "rom_version status=%x version=%x",
		     rom_version->status, rom_version->version);

	*version = rom_version->version;

	FUNC3(skb);
	return 0;
}