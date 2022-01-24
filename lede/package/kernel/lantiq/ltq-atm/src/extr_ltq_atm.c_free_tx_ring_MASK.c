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
struct sk_buff {int dummy; } ;
struct connection {int /*<<< orphan*/  lock; struct sk_buff** tx_skb; TYPE_1__* tx_desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  vcc; } ;
struct TYPE_5__ {struct connection* conn; } ;
struct TYPE_4__ {scalar_t__ own; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int dma_tx_descriptor_length ; 
 TYPE_2__ g_atm_priv_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int queue)
{
	unsigned long flags;
	int i;
	struct connection *conn = &g_atm_priv_data.conn[queue];
	struct sk_buff *skb;

	if (!conn)
		return;

	FUNC2(&conn->lock, flags);

	for (i = 0; i < dma_tx_descriptor_length; i++) {
		if (conn->tx_desc[i].own == 0 && conn->tx_skb[i] != NULL) {
			skb = conn->tx_skb[i];
			conn->tx_skb[i] = NULL;
			FUNC1(skb, FUNC0(skb)->vcc);
		}
	}
	FUNC3(&conn->lock, flags);
}