#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct eth_device {scalar_t__ priv; } ;
struct ag71xx_ring {int curr; TYPE_1__* buf; } ;
struct ag71xx_desc {int ctrl; scalar_t__ data; } ;
struct ag71xx {TYPE_2__* dev; struct ag71xx_ring tx_ring; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {struct ag71xx_desc* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_TX_CTRL ; 
 int AG71XX_TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__,int) ; 
 int DESC_EMPTY ; 
 int DESC_PKTLEN_M ; 
 int MAX_WAIT ; 
 int /*<<< orphan*/  TX_CTRL_TXE ; 
 scalar_t__ FUNC1 (struct ag71xx_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (void volatile*) ; 

__attribute__((used)) static int FUNC7(struct eth_device *dev, volatile void *packet,
                       int length)
{
    struct ag71xx *ag = (struct ag71xx *) dev->priv;
	struct ag71xx_ring *ring = &ag->tx_ring;
	struct ag71xx_desc *desc;
	int i;

	i = ring->curr % AG71XX_TX_RING_SIZE;
	desc = ring->buf[i].desc;

	if (!FUNC1(desc)) {
		FUNC4("%s: tx buffer full\n", ag->dev->name);
		return 1;
	}

	FUNC3((u32) packet, length);
    desc->data = (u32) FUNC6(packet);
    desc->ctrl = (length & DESC_PKTLEN_M);
	
	FUNC0("%s: sending %#08x length %#08x\n",
		ag->dev->name, desc->data, desc->ctrl);
	
	ring->curr++;
	if (ring->curr >= AG71XX_TX_RING_SIZE){
		ring->curr = 0;
	}
	
	/* enable TX engine */
	FUNC2(ag, AG71XX_REG_TX_CTRL, TX_CTRL_TXE);

    for (i = 0; i < MAX_WAIT; i++)
    {
        if (FUNC1(desc))
            break;
        FUNC5(10);
    }
    if (i == MAX_WAIT) {
        FUNC4("%s: tx timed out!\n", ag->dev->name);
		return -1;
	}
	
	/* disable TX engine */
	FUNC2(ag, AG71XX_REG_TX_CTRL, 0);
	desc->data = 0;
	desc->ctrl = DESC_EMPTY;
	
	return 0;
}