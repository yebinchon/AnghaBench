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
struct nullb_queue {unsigned int queue_depth; int /*<<< orphan*/  tag_map; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct nullb_queue *nq)
{
	unsigned int tag;

	do {
		tag = FUNC0(nq->tag_map, nq->queue_depth);
		if (tag >= nq->queue_depth)
			return -1U;
	} while (FUNC1(tag, nq->tag_map));

	return tag;
}