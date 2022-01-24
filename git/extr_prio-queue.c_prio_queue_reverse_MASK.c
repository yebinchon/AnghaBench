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
struct prio_queue {int nr; int /*<<< orphan*/ * compare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct prio_queue*,int,int) ; 

void FUNC2(struct prio_queue *queue)
{
	int i, j;

	if (queue->compare != NULL)
		FUNC0("prio_queue_reverse() on non-LIFO queue");
	for (i = 0; i < (j = (queue->nr - 1) - i); i++)
		FUNC1(queue, i, j);
}