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
struct sk_buff {int len; scalar_t__ data; } ;
struct rtl_download_response {int dummy; } ;
struct rtl_download_cmd {int index; int /*<<< orphan*/  data; } ;
struct hci_rp_read_local_version {int /*<<< orphan*/  lmp_subver; int /*<<< orphan*/  hci_rev; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int RTL_FRAG_LEN ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int,int,struct rtl_download_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_download_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct rtl_download_cmd* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct hci_dev *hdev,
				 const unsigned char *data, int fw_len)
{
	struct rtl_download_cmd *dl_cmd;
	int frag_num = fw_len / RTL_FRAG_LEN + 1;
	int frag_len = RTL_FRAG_LEN;
	int ret = 0;
	int i;
	struct sk_buff *skb;
	struct hci_rp_read_local_version *rp;

	dl_cmd = FUNC8(sizeof(struct rtl_download_cmd), GFP_KERNEL);
	if (!dl_cmd)
		return -ENOMEM;

	for (i = 0; i < frag_num; i++) {
		struct sk_buff *skb;

		FUNC0("download fw (%d/%d)", i, frag_num);

		if (i > 0x7f)
			dl_cmd->index = (i & 0x7f) + 1;
		else
			dl_cmd->index = i;

		if (i == (frag_num - 1)) {
			dl_cmd->index |= 0x80; /* data end */
			frag_len = fw_len % RTL_FRAG_LEN;
		}
		FUNC9(dl_cmd->data, data, frag_len);

		/* Send download command */
		skb = FUNC3(hdev, 0xfc20, frag_len + 1, dl_cmd,
				     HCI_INIT_TIMEOUT);
		if (FUNC1(skb)) {
			FUNC10(hdev, "download fw command failed (%ld)",
				    FUNC2(skb));
			ret = -FUNC2(skb);
			goto out;
		}

		if (skb->len != sizeof(struct rtl_download_response)) {
			FUNC10(hdev, "download fw event length mismatch");
			FUNC7(skb);
			ret = -EIO;
			goto out;
		}

		FUNC7(skb);
		data += RTL_FRAG_LEN;
	}

	skb = FUNC5(hdev);
	if (FUNC1(skb)) {
		ret = FUNC2(skb);
		FUNC10(hdev, "read local version failed");
		goto out;
	}

	rp = (struct hci_rp_read_local_version *)skb->data;
	FUNC11(hdev, "fw version 0x%04x%04x",
		     FUNC4(rp->hci_rev), FUNC4(rp->lmp_subver));
	FUNC7(skb);

out:
	FUNC6(dl_cmd);
	return ret;
}