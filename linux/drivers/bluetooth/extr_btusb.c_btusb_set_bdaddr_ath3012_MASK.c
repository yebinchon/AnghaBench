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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 long FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,long) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev,
				    const bdaddr_t *bdaddr)
{
	struct sk_buff *skb;
	u8 buf[10];
	long ret;

	buf[0] = 0x01;
	buf[1] = 0x01;
	buf[2] = 0x00;
	buf[3] = sizeof(bdaddr_t);
	FUNC5(buf + 4, bdaddr, sizeof(bdaddr_t));

	skb = FUNC2(hdev, 0xfc0b, sizeof(buf), buf, HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		ret = FUNC1(skb);
		FUNC3(hdev, "Change address command failed (%ld)", ret);
		return ret;
	}
	FUNC4(skb);

	return 0;
}