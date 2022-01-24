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
struct bfq_data {struct bfq_queue* in_service_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_entity*,int,int,int) ; 

void FUNC1(struct bfq_data *bfqd, struct bfq_queue *bfqq,
		      bool expiration)
{
	struct bfq_entity *entity = &bfqq->entity;

	FUNC0(entity, false,
				    bfqq == bfqd->in_service_queue, expiration);
}