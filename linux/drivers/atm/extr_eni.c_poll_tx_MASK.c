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
struct sk_buff {int dummy; } ;
struct eni_tx {int /*<<< orphan*/  backlog; scalar_t__ send; } ;
struct atm_dev {int dummy; } ;
typedef  enum enq_res { ____Placeholder_enq_res } enq_res ;
struct TYPE_2__ {struct eni_tx* tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (struct atm_dev*) ; 
 int NR_CHAN ; 
 int FUNC2 (struct sk_buff*) ; 
 int enq_jam ; 
 int enq_ok ; 
 int /*<<< orphan*/  requeued ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct atm_dev *dev)
{
	struct eni_tx *tx;
	struct sk_buff *skb;
	enum enq_res res;
	int i;

	FUNC0(">poll_tx\n");
	for (i = NR_CHAN-1; i >= 0; i--) {
		tx = &FUNC1(dev)->tx[i];
		if (tx->send)
			while ((skb = FUNC3(&tx->backlog))) {
				res = FUNC2(skb);
				if (res == enq_ok) continue;
				FUNC0("re-queuing TX PDU\n");
				FUNC4(&tx->backlog,skb);
				requeued++;
				if (res == enq_jam) return;
				break;
			}
	}
}