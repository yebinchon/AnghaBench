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
struct lanai_vcc {int /*<<< orphan*/  vci; TYPE_1__ tx; } ;
struct lanai_dev {int /*<<< orphan*/  backlog_vccs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lanai_dev*,struct lanai_vcc*,struct sk_buff*,int) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct lanai_vcc*) ; 
 int FUNC7 (struct lanai_vcc*,int) ; 

__attribute__((used)) static void FUNC8(struct lanai_dev *lanai,
	struct lanai_vcc *lvcc, int endptr)
{
	int n;
	struct sk_buff *skb;
	int space = FUNC7(lvcc, endptr);
	FUNC0(FUNC6(lvcc),
	    "vcc_tx_unqueue() called with empty backlog (vci=%d)\n",
	    lvcc->vci);
	while (space >= 64) {
		skb = FUNC4(&lvcc->tx.backlog);
		if (skb == NULL)
			goto no_backlog;
		n = FUNC2(skb->len);
		if (n + 16 > space) {
			/* No room for this packet - put it back on queue */
			FUNC5(&lvcc->tx.backlog, skb);
			return;
		}
		FUNC3(lanai, lvcc, skb, n);
		space -= n + 16;
	}
	if (!FUNC6(lvcc)) {
	    no_backlog:
		FUNC1(lvcc->vci, lanai->backlog_vccs);
	}
}