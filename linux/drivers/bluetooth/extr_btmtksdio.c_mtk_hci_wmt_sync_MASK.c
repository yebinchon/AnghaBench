#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mtk_wmt_hdr {int dir; int op; int /*<<< orphan*/  flag; int /*<<< orphan*/  dlen; } ;
struct mtk_hci_wmt_cmd {int /*<<< orphan*/  data; } ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {TYPE_2__* evt_skb; int /*<<< orphan*/  tx_state; } ;
struct btmtk_hci_wmt_params {int dlen; int op; int* status; int /*<<< orphan*/  data; int /*<<< orphan*/  flag; } ;
struct btmtk_hci_wmt_evt_funcc {int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int op; int flag; } ;
struct btmtk_hci_wmt_evt {TYPE_1__ whdr; } ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTMTKSDIO_TX_WAIT_VND_EVT ; 
 int BTMTK_WMT_INVALID ; 
 int BTMTK_WMT_ON_DONE ; 
 int BTMTK_WMT_ON_PROGRESS ; 
 int BTMTK_WMT_ON_UNDONE ; 
 int BTMTK_WMT_PATCH_DONE ; 
 int BTMTK_WMT_PATCH_UNDONE ; 
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
#define  MTK_WMT_FUNC_CTRL 129 
#define  MTK_WMT_SEMAPHORE 128 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int FUNC0 (struct hci_dev*,int,int,struct mtk_hci_wmt_cmd*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct btmtksdio_dev* FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct hci_dev *hdev,
			    struct btmtk_hci_wmt_params *wmt_params)
{
	struct btmtksdio_dev *bdev = FUNC5(hdev);
	struct btmtk_hci_wmt_evt_funcc *wmt_evt_funcc;
	u32 hlen, status = BTMTK_WMT_INVALID;
	struct btmtk_hci_wmt_evt *wmt_evt;
	struct mtk_hci_wmt_cmd wc;
	struct mtk_wmt_hdr *hdr;
	int err;

	hlen = sizeof(*hdr) + wmt_params->dlen;
	if (hlen > 255)
		return -EINVAL;

	hdr = (struct mtk_wmt_hdr *)&wc;
	hdr->dir = 1;
	hdr->op = wmt_params->op;
	hdr->dlen = FUNC4(wmt_params->dlen + 1);
	hdr->flag = wmt_params->flag;
	FUNC7(wc.data, wmt_params->data, wmt_params->dlen);

	FUNC8(BTMTKSDIO_TX_WAIT_VND_EVT, &bdev->tx_state);

	err = FUNC0(hdev, 0xfc6f, hlen, &wc);
	if (err < 0) {
		FUNC3(BTMTKSDIO_TX_WAIT_VND_EVT, &bdev->tx_state);
		return err;
	}

	/* The vendor specific WMT commands are all answered by a vendor
	 * specific event and will not have the Command Status or Command
	 * Complete as with usual HCI command flow control.
	 *
	 * After sending the command, wait for BTMTKSDIO_TX_WAIT_VND_EVT
	 * state to be cleared. The driver specific event receive routine
	 * will clear that state and with that indicate completion of the
	 * WMT command.
	 */
	err = FUNC9(&bdev->tx_state, BTMTKSDIO_TX_WAIT_VND_EVT,
				  TASK_INTERRUPTIBLE, HCI_INIT_TIMEOUT);
	if (err == -EINTR) {
		FUNC2(hdev, "Execution of wmt command interrupted");
		FUNC3(BTMTKSDIO_TX_WAIT_VND_EVT, &bdev->tx_state);
		return err;
	}

	if (err) {
		FUNC2(hdev, "Execution of wmt command timed out");
		FUNC3(BTMTKSDIO_TX_WAIT_VND_EVT, &bdev->tx_state);
		return -ETIMEDOUT;
	}

	/* Parse and handle the return WMT event */
	wmt_evt = (struct btmtk_hci_wmt_evt *)bdev->evt_skb->data;
	if (wmt_evt->whdr.op != hdr->op) {
		FUNC2(hdev, "Wrong op received %d expected %d",
			   wmt_evt->whdr.op, hdr->op);
		err = -EIO;
		goto err_free_skb;
	}

	switch (wmt_evt->whdr.op) {
	case MTK_WMT_SEMAPHORE:
		if (wmt_evt->whdr.flag == 2)
			status = BTMTK_WMT_PATCH_UNDONE;
		else
			status = BTMTK_WMT_PATCH_DONE;
		break;
	case MTK_WMT_FUNC_CTRL:
		wmt_evt_funcc = (struct btmtk_hci_wmt_evt_funcc *)wmt_evt;
		if (FUNC1(wmt_evt_funcc->status) == 0x404)
			status = BTMTK_WMT_ON_DONE;
		else if (FUNC1(wmt_evt_funcc->status) == 0x420)
			status = BTMTK_WMT_ON_PROGRESS;
		else
			status = BTMTK_WMT_ON_UNDONE;
		break;
	}

	if (wmt_params->status)
		*wmt_params->status = status;

err_free_skb:
	FUNC6(bdev->evt_skb);
	bdev->evt_skb = NULL;

	return err;
}