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
struct ag71xx_ring {scalar_t__ curr; int dirty; TYPE_2__* buf; int /*<<< orphan*/  order; } ;
struct ag71xx_desc {int /*<<< orphan*/  ctrl; } ;
struct ag71xx {int rx_buf_offset; TYPE_1__* dev; struct ag71xx_ring rx_ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  DESC_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct ag71xx_desc* FUNC3 (struct ag71xx_ring*,unsigned int) ; 
 int /*<<< orphan*/  napi_alloc_frag ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct ag71xx *ag)
{
	struct ag71xx_ring *ring = &ag->rx_ring;
	int ring_mask = FUNC0(ring->order) - 1;
	unsigned int count;
	int offset = ag->rx_buf_offset;

	count = 0;
	for (; ring->curr - ring->dirty > 0; ring->dirty++) {
		struct ag71xx_desc *desc;
		unsigned int i;

		i = ring->dirty & ring_mask;
		desc = FUNC3(ring, i);

		if (!ring->buf[i].rx_buf &&
		    !FUNC2(ag, &ring->buf[i], offset,
					napi_alloc_frag))
			break;

		desc->ctrl = DESC_EMPTY;
		count++;
	}

	/* flush descriptors */
	FUNC4();

	FUNC1("%s: %u rx descriptors refilled\n", ag->dev->name, count);

	return count;
}