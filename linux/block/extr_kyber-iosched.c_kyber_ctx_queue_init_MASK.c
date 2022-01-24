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
struct kyber_ctx_queue {int /*<<< orphan*/ * rq_list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int KYBER_NUM_DOMAINS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct kyber_ctx_queue *kcq)
{
	unsigned int i;

	FUNC1(&kcq->lock);
	for (i = 0; i < KYBER_NUM_DOMAINS; i++)
		FUNC0(&kcq->rq_list[i]);
}