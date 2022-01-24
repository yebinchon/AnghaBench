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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ll_struct {int /*<<< orphan*/  txq; } ;
struct hci_uart {struct ll_struct* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(u8 cmd, struct hci_uart *hu)
{
	int err = 0;
	struct sk_buff *skb = NULL;
	struct ll_struct *ll = hu->priv;

	FUNC0("hu %p cmd 0x%x", hu, cmd);

	/* allocate packet */
	skb = FUNC2(1, GFP_ATOMIC);
	if (!skb) {
		FUNC1("cannot allocate memory for HCILL packet");
		err = -ENOMEM;
		goto out;
	}

	/* prepare packet */
	FUNC3(skb, cmd);

	/* send packet */
	FUNC4(&ll->txq, skb);
out:
	return err;
}