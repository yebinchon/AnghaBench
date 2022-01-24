#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct mrvl_data {int tx_len; int /*<<< orphan*/  rawq; int /*<<< orphan*/  flags; } ;
struct hci_uart {struct mrvl_data* priv; } ;
struct hci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MRVL_RAW_DATA ; 
 int /*<<< orphan*/  STATE_FW_REQ_PENDING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,...) ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct hci_uart* FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct hci_dev *hdev, const char *name)
{
	struct hci_uart *hu = FUNC5(hdev);
	struct mrvl_data *mrvl = hu->priv;
	const struct firmware *fw = NULL;
	const u8 *fw_ptr, *fw_max;
	int err;

	err = FUNC9(&fw, name, &hdev->dev);
	if (err < 0) {
		FUNC2(hdev, "Failed to load firmware file %s", name);
		return err;
	}

	fw_ptr = fw->data;
	fw_max = fw->data + fw->size;

	FUNC3(hdev, "Loading %s", name);

	FUNC10(STATE_FW_REQ_PENDING, &mrvl->flags);

	while (fw_ptr <= fw_max) {
		struct sk_buff *skb;

		/* Controller drives the firmware load by sending firmware
		 * request packets containing the expected fragment size.
		 */
		err = FUNC13(&mrvl->flags, STATE_FW_REQ_PENDING,
					  TASK_INTERRUPTIBLE,
					  FUNC7(2000));
		if (err == 1) {
			FUNC2(hdev, "Firmware load interrupted");
			err = -EINTR;
			break;
		} else if (err) {
			FUNC2(hdev, "Firmware request timeout");
			err = -ETIMEDOUT;
			break;
		}

		FUNC1(hdev, "Firmware request, expecting %d bytes",
			   mrvl->tx_len);

		if (fw_ptr == fw_max) {
			/* Controller requests a null size once firmware is
			 * fully loaded. If controller expects more data, there
			 * is an issue.
			 */
			if (!mrvl->tx_len) {
				FUNC3(hdev, "Firmware loading complete");
			} else {
				FUNC2(hdev, "Firmware loading failure");
				err = -EINVAL;
			}
			break;
		}

		if (fw_ptr + mrvl->tx_len > fw_max) {
			mrvl->tx_len = fw_max - fw_ptr;
			FUNC1(hdev, "Adjusting tx_len to %d",
				   mrvl->tx_len);
		}

		skb = FUNC4(mrvl->tx_len, GFP_KERNEL);
		if (!skb) {
			FUNC2(hdev, "Failed to alloc mem for FW packet");
			err = -ENOMEM;
			break;
		}
		FUNC0(skb)->pkt_type = MRVL_RAW_DATA;

		FUNC11(skb, fw_ptr, mrvl->tx_len);
		fw_ptr += mrvl->tx_len;

		FUNC10(STATE_FW_REQ_PENDING, &mrvl->flags);

		FUNC12(&mrvl->rawq, skb);
		FUNC6(hu);
	}

	FUNC8(fw);
	return err;
}