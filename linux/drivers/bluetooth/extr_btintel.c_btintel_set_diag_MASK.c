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

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

int FUNC6(struct hci_dev *hdev, bool enable)
{
	struct sk_buff *skb;
	u8 param[3];
	int err;

	if (enable) {
		param[0] = 0x03;
		param[1] = 0x03;
		param[2] = 0x03;
	} else {
		param[0] = 0x00;
		param[1] = 0x00;
		param[2] = 0x00;
	}

	skb = FUNC2(hdev, 0xfc43, 3, param, HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		err = FUNC1(skb);
		if (err == -ENODATA)
			goto done;
		FUNC3(hdev, "Changing Intel diagnostic mode failed (%d)",
			   err);
		return err;
	}
	FUNC5(skb);

done:
	FUNC4(hdev, enable);
	return 0;
}