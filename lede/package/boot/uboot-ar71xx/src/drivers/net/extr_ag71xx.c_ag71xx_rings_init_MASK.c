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
struct ag71xx {int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_RX_RING_SIZE ; 
 int /*<<< orphan*/  AG71XX_TX_RING_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 

__attribute__((used)) static int FUNC3(struct ag71xx *ag)
{
	int ret;

	ret = FUNC0(&ag->tx_ring, AG71XX_TX_RING_SIZE);
	if (ret)
		return ret;

	FUNC2(ag);

	ret = FUNC0(&ag->rx_ring, AG71XX_RX_RING_SIZE);
	if (ret)
		return ret;

	ret = FUNC1(ag);
	return ret;
}