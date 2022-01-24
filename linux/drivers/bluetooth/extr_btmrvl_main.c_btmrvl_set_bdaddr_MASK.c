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
struct hci_dev {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CMD_SET_BDADDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int MRVL_VENDOR_PKT ; 
 long FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev, const bdaddr_t *bdaddr)
{
	struct sk_buff *skb;
	long ret;
	u8 buf[8];

	buf[0] = MRVL_VENDOR_PKT;
	buf[1] = sizeof(bdaddr_t);
	FUNC5(buf + 2, bdaddr, sizeof(bdaddr_t));

	skb = FUNC3(hdev, BT_CMD_SET_BDADDR, sizeof(buf), buf,
			     HCI_INIT_TIMEOUT);
	if (FUNC1(skb)) {
		ret = FUNC2(skb);
		FUNC0("%s: changing btmrvl device address failed (%ld)",
		       hdev->name, ret);
		return ret;
	}
	FUNC4(skb);

	return 0;
}