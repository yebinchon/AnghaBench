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
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_local_version {int /*<<< orphan*/  lmp_subver; int /*<<< orphan*/  hci_rev; } ;
struct hci_dev {scalar_t__ bus; } ;
struct bcm_subver_table {char* name; int subver; } ;

/* Variables and functions */
 scalar_t__ HCI_USB ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct bcm_subver_table* bcm_uart_subver_table ; 
 struct bcm_subver_table* bcm_usb_subver_table ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,char const*,int,int,int,int) ; 
 int FUNC3 (struct hci_dev*) ; 
 struct sk_buff* FUNC4 (struct hci_dev*) ; 
 struct sk_buff* FUNC5 (struct hci_dev*) ; 
 int FUNC6 (struct hci_dev*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t,char*,char const*,...) ; 

int FUNC11(struct hci_dev *hdev, char *fw_name, size_t len,
		     bool reinit)
{
	u16 subver, rev, pid, vid;
	const char *hw_name = "BCM";
	struct sk_buff *skb;
	struct hci_rp_read_local_version *ver;
	const struct bcm_subver_table *bcm_subver_table;
	int i, err;

	/* Reset */
	err = FUNC6(hdev);
	if (err)
		return err;

	/* Read Local Version Info */
	skb = FUNC4(hdev);
	if (FUNC0(skb))
		return FUNC1(skb);

	ver = (struct hci_rp_read_local_version *)skb->data;
	rev = FUNC9(ver->hci_rev);
	subver = FUNC9(ver->lmp_subver);
	FUNC8(skb);

	/* Read controller information */
	if (!reinit) {
		err = FUNC3(hdev);
		if (err)
			return err;
	}

	/* Upper nibble of rev should be between 0 and 3? */
	if (((rev & 0xf000) >> 12) > 3)
		return 0;

	bcm_subver_table = (hdev->bus == HCI_USB) ? bcm_usb_subver_table :
						    bcm_uart_subver_table;

	for (i = 0; bcm_subver_table[i].name; i++) {
		if (subver == bcm_subver_table[i].subver) {
			hw_name = bcm_subver_table[i].name;
			break;
		}
	}

	if (hdev->bus == HCI_USB) {
		/* Read USB Product Info */
		skb = FUNC5(hdev);
		if (FUNC0(skb))
			return FUNC1(skb);

		vid = FUNC7(skb->data + 1);
		pid = FUNC7(skb->data + 3);
		FUNC8(skb);

		FUNC10(fw_name, len, "brcm/%s-%4.4x-%4.4x.hcd",
			 hw_name, vid, pid);
	} else {
		FUNC10(fw_name, len, "brcm/%s.hcd", hw_name);
	}

	FUNC2(hdev, "%s (%3.3u.%3.3u.%3.3u) build %4.4u",
		    hw_name, (subver & 0xe000) >> 13,
		    (subver & 0x1f00) >> 8, (subver & 0x00ff), rev & 0x0fff);

	return 0;
}