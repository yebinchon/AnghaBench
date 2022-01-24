#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ag71xx_ring {int dirty; int curr; TYPE_1__* buf; int /*<<< orphan*/  order; } ;
struct ag71xx_desc {int /*<<< orphan*/  ctrl; } ;
struct ag71xx {int /*<<< orphan*/  restart_work; TYPE_3__* dev; scalar_t__ tx_hang_workaround; struct ag71xx_ring tx_ring; } ;
struct TYPE_6__ {int tx_bytes; int tx_packets; } ;
struct TYPE_7__ {TYPE_2__ stats; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {scalar_t__ len; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_TX_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  DESC_EMPTY ; 
 int HZ ; 
 int /*<<< orphan*/  TX_STATUS_PS ; 
 scalar_t__ FUNC2 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx_desc*) ; 
 struct ag71xx_desc* FUNC4 (struct ag71xx_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct ag71xx *ag, bool flush)
{
	struct ag71xx_ring *ring = &ag->tx_ring;
	bool dma_stuck = false;
	int ring_mask = FUNC0(ring->order) - 1;
	int ring_size = FUNC0(ring->order);
	int sent = 0;
	int bytes_compl = 0;
	int n = 0;

	FUNC1("%s: processing TX ring\n", ag->dev->name);

	while (ring->dirty + n != ring->curr) {
		unsigned int i = (ring->dirty + n) & ring_mask;
		struct ag71xx_desc *desc = FUNC4(ring, i);
		struct sk_buff *skb = ring->buf[i].skb;

		if (!flush && !FUNC3(desc)) {
			if (ag->tx_hang_workaround &&
			    FUNC2(ag)) {
				FUNC10(&ag->restart_work, HZ / 2);
				dma_stuck = true;
			}
			break;
		}

		if (flush)
			desc->ctrl |= DESC_EMPTY;

		n++;
		if (!skb)
			continue;

		FUNC7(skb);
		ring->buf[i].skb = NULL;

		bytes_compl += ring->buf[i].len;

		sent++;
		ring->dirty += n;

		while (n > 0) {
			FUNC5(ag, AG71XX_REG_TX_STATUS, TX_STATUS_PS);
			n--;
		}
	}

	FUNC1("%s: %d packets sent out\n", ag->dev->name, sent);

	if (!sent)
		return 0;

	ag->dev->stats.tx_bytes += bytes_compl;
	ag->dev->stats.tx_packets += sent;

	FUNC8(ag->dev, sent, bytes_compl);
	if ((ring->curr - ring->dirty) < (ring_size * 3) / 4)
		FUNC9(ag->dev);

	if (!dma_stuck)
		FUNC6(&ag->restart_work);

	return sent;
}