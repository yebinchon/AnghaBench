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
struct prio_queue {scalar_t__ insertion_ctr; scalar_t__ alloc; scalar_t__ nr; int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct prio_queue *queue)
{
	FUNC0(queue->array);
	queue->nr = 0;
	queue->alloc = 0;
	queue->insertion_ctr = 0;
}