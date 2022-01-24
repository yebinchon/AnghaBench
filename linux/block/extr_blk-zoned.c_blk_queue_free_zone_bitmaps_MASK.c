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
struct request_queue {int /*<<< orphan*/ * seq_zones_wlock; int /*<<< orphan*/ * seq_zones_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct request_queue *q)
{
	FUNC0(q->seq_zones_bitmap);
	q->seq_zones_bitmap = NULL;
	FUNC0(q->seq_zones_wlock);
	q->seq_zones_wlock = NULL;
}