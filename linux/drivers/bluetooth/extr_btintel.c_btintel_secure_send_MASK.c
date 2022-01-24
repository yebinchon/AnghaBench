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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int*,void const*,int) ; 

int FUNC5(struct hci_dev *hdev, u8 fragment_type, u32 plen,
			const void *param)
{
	while (plen > 0) {
		struct sk_buff *skb;
		u8 cmd_param[253], fragment_len = (plen > 252) ? 252 : plen;

		cmd_param[0] = fragment_type;
		FUNC4(cmd_param + 1, param, fragment_len);

		skb = FUNC2(hdev, 0xfc09, fragment_len + 1,
				     cmd_param, HCI_INIT_TIMEOUT);
		if (FUNC0(skb))
			return FUNC1(skb);

		FUNC3(skb);

		plen -= fragment_len;
		param += fragment_len;
	}

	return 0;
}