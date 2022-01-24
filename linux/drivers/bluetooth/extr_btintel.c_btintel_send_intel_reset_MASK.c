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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct intel_reset {int member_0; int member_1; int member_2; int member_3; int member_4; int /*<<< orphan*/  boot_param; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int,struct intel_reset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

int FUNC6(struct hci_dev *hdev, u32 boot_param)
{
	struct intel_reset params = { 0x00, 0x01, 0x00, 0x01, 0x00000000 };
	struct sk_buff *skb;

	params.boot_param = FUNC4(boot_param);

	skb = FUNC2(hdev, 0xfc01, sizeof(params), &params,
			     HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		FUNC3(hdev, "Failed to send Intel Reset command");
		return FUNC1(skb);
	}

	FUNC5(skb);

	return 0;
}