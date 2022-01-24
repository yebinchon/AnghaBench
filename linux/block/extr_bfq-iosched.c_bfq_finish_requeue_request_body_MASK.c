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
struct bfq_queue {int /*<<< orphan*/  allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_queue*) ; 

__attribute__((used)) static void FUNC1(struct bfq_queue *bfqq)
{
	bfqq->allocated--;

	FUNC0(bfqq);
}