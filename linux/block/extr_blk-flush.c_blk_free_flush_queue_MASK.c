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
struct blk_flush_queue {struct blk_flush_queue* flush_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_flush_queue*) ; 

void FUNC1(struct blk_flush_queue *fq)
{
	/* bio based request queue hasn't flush queue */
	if (!fq)
		return;

	FUNC0(fq->flush_rq);
	FUNC0(fq);
}