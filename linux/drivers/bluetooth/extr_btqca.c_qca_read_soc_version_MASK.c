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
typedef  int u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rome_version {int /*<<< orphan*/  rome_ver; int /*<<< orphan*/  soc_id; int /*<<< orphan*/  patch_ver; int /*<<< orphan*/  product_id; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct edl_event_hdr {scalar_t__ rtype; scalar_t__ data; int /*<<< orphan*/  cresp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ EDL_APP_VER_RES_EVT ; 
 int /*<<< orphan*/  EDL_CMD_REQ_RES_EVT ; 
 int /*<<< orphan*/  EDL_PATCH_CMD_LEN ; 
 int /*<<< orphan*/  EDL_PATCH_CMD_OPCODE ; 
 char EDL_PATCH_VER_REQ_CMD ; 
 int EILSEQ ; 
 int EIO ; 
 int /*<<< orphan*/  HCI_EV_VENDOR ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct hci_dev *hdev, u32 *soc_version)
{
	struct sk_buff *skb;
	struct edl_event_hdr *edl;
	struct rome_version *ver;
	char cmd;
	int err = 0;

	FUNC4(hdev, "QCA Version Request");

	cmd = EDL_PATCH_VER_REQ_CMD;
	skb = FUNC3(hdev, EDL_PATCH_CMD_OPCODE, EDL_PATCH_CMD_LEN,
				&cmd, HCI_EV_VENDOR, HCI_INIT_TIMEOUT);
	if (FUNC1(skb)) {
		err = FUNC2(skb);
		FUNC5(hdev, "Reading QCA version information failed (%d)",
			   err);
		return err;
	}

	if (skb->len != sizeof(*edl) + sizeof(*ver)) {
		FUNC5(hdev, "QCA Version size mismatch len %d", skb->len);
		err = -EILSEQ;
		goto out;
	}

	edl = (struct edl_event_hdr *)(skb->data);
	if (!edl) {
		FUNC5(hdev, "QCA TLV with no header");
		err = -EILSEQ;
		goto out;
	}

	if (edl->cresp != EDL_CMD_REQ_RES_EVT ||
	    edl->rtype != EDL_APP_VER_RES_EVT) {
		FUNC5(hdev, "QCA Wrong packet received %d %d", edl->cresp,
			   edl->rtype);
		err = -EIO;
		goto out;
	}

	ver = (struct rome_version *)(edl->data);

	FUNC0("%s: Product:0x%08x", hdev->name, FUNC8(ver->product_id));
	FUNC0("%s: Patch  :0x%08x", hdev->name, FUNC7(ver->patch_ver));
	FUNC0("%s: ROM    :0x%08x", hdev->name, FUNC7(ver->rome_ver));
	FUNC0("%s: SOC    :0x%08x", hdev->name, FUNC8(ver->soc_id));

	/* QCA chipset version can be decided by patch and SoC
	 * version, combination with upper 2 bytes from SoC
	 * and lower 2 bytes from patch will be used.
	 */
	*soc_version = (FUNC8(ver->soc_id) << 16) |
			(FUNC7(ver->rome_ver) & 0x0000ffff);
	if (*soc_version == 0)
		err = -EILSEQ;

out:
	FUNC6(skb);
	if (err)
		FUNC5(hdev, "QCA Failed to get version (%d)", err);

	return err;
}