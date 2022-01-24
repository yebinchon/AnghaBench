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
struct bfq_entity {int dummy; } ;
struct bfq_queue {struct bfq_entity entity; } ;
struct bfq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_entity*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*) ; 

void FUNC3(struct bfq_data *bfqd, struct bfq_queue *bfqq)
{
	struct bfq_entity *entity = &bfqq->entity;

	FUNC0(entity, FUNC1(bfqq),
				    false, false);
	FUNC2(bfqq);
}