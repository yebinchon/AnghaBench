#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_3__* atmvcc; } ;
struct lanai_vcc {TYPE_2__ tx; } ;
struct lanai_dev {int dummy; } ;
struct TYPE_6__ {TYPE_1__* stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lanai_dev*,struct lanai_vcc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct lanai_vcc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lanai_vcc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lanai_vcc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lanai_vcc*,int) ; 

__attribute__((used)) static void FUNC9(struct lanai_dev *lanai,
	struct lanai_vcc *lvcc, struct sk_buff *skb, int pdusize)
{
	int pad;
	FUNC0(pdusize == FUNC1(skb->len),
	    "lanai_send_one_aal5: wrong size packet (%d != %d)\n",
	    pdusize, FUNC1(skb->len));
	FUNC5(lvcc, 0, pdusize);
	pad = pdusize - skb->len - 8;
	FUNC0(pad >= 0, "pad is negative (%d)\n", pad);
	FUNC0(pad < 48, "pad is too big (%d)\n", pad);
	FUNC7(lvcc, skb->data, skb->len);
	FUNC8(lvcc, pad);
	FUNC6(lvcc, skb->len, 0, 0);
	FUNC3(lanai, lvcc);
	FUNC4(lvcc->tx.atmvcc, skb);
	FUNC2(&lvcc->tx.atmvcc->stats->tx);
}