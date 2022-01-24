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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int /*<<< orphan*/  backlog; } ;
struct lanai_vcc {TYPE_1__ tx; int /*<<< orphan*/  vci; } ;
struct lanai_dev {int /*<<< orphan*/  backlog_vccs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lanai_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lanai_dev*,struct lanai_vcc*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct lanai_vcc*) ; 
 int FUNC8 (struct lanai_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vcc_txreadptr ; 

__attribute__((used)) static void FUNC9(struct lanai_dev *lanai, struct lanai_vcc *lvcc,
	struct sk_buff *skb)
{
	int space, n;
	if (FUNC7(lvcc))		/* Already backlogged */
		goto queue_it;
	space = FUNC8(lvcc,
		    FUNC1(FUNC4(lvcc, vcc_txreadptr)));
	n = FUNC3(skb->len);
	FUNC0(n + 16 >= 64, "vcc_tx_aal5: n too small (%d)\n", n);
	if (space < n + 16) {			/* No space for this PDU */
		FUNC2(lvcc->vci, lanai->backlog_vccs);
	    queue_it:
		FUNC6(&lvcc->tx.backlog, skb);
		return;
	}
	FUNC5(lanai, lvcc, skb, n);
}