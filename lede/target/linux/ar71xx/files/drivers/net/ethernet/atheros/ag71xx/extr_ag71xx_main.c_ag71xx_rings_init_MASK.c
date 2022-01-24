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
struct ag71xx_ring {scalar_t__ descs_dma; void* descs_cpu; int /*<<< orphan*/  order; int /*<<< orphan*/ * buf; } ;
struct ag71xx {struct ag71xx_ring rx_ring; struct ag71xx_ring tx_ring; } ;

/* Variables and functions */
 int AG71XX_DESC_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ag71xx *ag)
{
	struct ag71xx_ring *tx = &ag->tx_ring;
	struct ag71xx_ring *rx = &ag->rx_ring;
	int ring_size = FUNC0(tx->order) + FUNC0(rx->order);
	int tx_size = FUNC0(tx->order);

	tx->buf = FUNC5(ring_size * sizeof(*tx->buf), GFP_KERNEL);
	if (!tx->buf)
		return -ENOMEM;

	tx->descs_cpu = FUNC3(NULL, ring_size * AG71XX_DESC_SIZE,
					   &tx->descs_dma, GFP_ATOMIC);
	if (!tx->descs_cpu) {
		FUNC4(tx->buf);
		tx->buf = NULL;
		return -ENOMEM;
	}

	rx->buf = &tx->buf[FUNC0(tx->order)];
	rx->descs_cpu = ((void *)tx->descs_cpu) + tx_size * AG71XX_DESC_SIZE;
	rx->descs_dma = tx->descs_dma + tx_size * AG71XX_DESC_SIZE;

	FUNC2(ag);
	return FUNC1(ag);
}