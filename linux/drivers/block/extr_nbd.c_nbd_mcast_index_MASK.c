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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NBD_ATTR_INDEX ; 
 int /*<<< orphan*/  NBD_CMD_LINK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nbd_genl_family ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(int index)
{
	struct sk_buff *skb;
	void *msg_head;
	int ret;

	skb = FUNC2(FUNC5(sizeof(u32)), GFP_KERNEL);
	if (!skb)
		return;
	msg_head = FUNC3(skb, 0, 0, &nbd_genl_family, 0,
				     NBD_CMD_LINK_DEAD);
	if (!msg_head) {
		FUNC6(skb);
		return;
	}
	ret = FUNC4(skb, NBD_ATTR_INDEX, index);
	if (ret) {
		FUNC6(skb);
		return;
	}
	FUNC0(skb, msg_head);
	FUNC1(&nbd_genl_family, skb, 0, 0, GFP_KERNEL);
}