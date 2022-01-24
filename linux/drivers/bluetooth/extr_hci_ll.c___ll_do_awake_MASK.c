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
struct sk_buff {int dummy; } ;
struct ll_struct {int /*<<< orphan*/  hcill_state; int /*<<< orphan*/  txq; int /*<<< orphan*/  tx_wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCILL_AWAKE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct ll_struct *ll)
{
	struct sk_buff *skb = NULL;

	while ((skb = FUNC0(&ll->tx_wait_q)))
		FUNC1(&ll->txq, skb);

	ll->hcill_state = HCILL_AWAKE;
}