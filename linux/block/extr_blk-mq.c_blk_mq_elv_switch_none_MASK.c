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
struct request_queue {int /*<<< orphan*/  sysfs_lock; TYPE_2__* elevator; } ;
struct list_head {int dummy; } ;
struct blk_mq_qe_pair {TYPE_1__* type; int /*<<< orphan*/  node; struct request_queue* q; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int /*<<< orphan*/  elevator_owner; } ;

/* Variables and functions */
 int GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ *) ; 
 struct blk_mq_qe_pair* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct list_head *head,
		struct request_queue *q)
{
	struct blk_mq_qe_pair *qe;

	if (!q->elevator)
		return true;

	qe = FUNC3(sizeof(*qe), GFP_NOIO | __GFP_NOWARN | __GFP_NORETRY);
	if (!qe)
		return false;

	FUNC0(&qe->node);
	qe->q = q;
	qe->type = q->elevator->type;
	FUNC4(&qe->node, head);

	FUNC5(&q->sysfs_lock);
	/*
	 * After elevator_switch_mq, the previous elevator_queue will be
	 * released by elevator_release. The reference of the io scheduler
	 * module get by elevator_get will also be put. So we need to get
	 * a reference of the io scheduler module here to prevent it to be
	 * removed.
	 */
	FUNC1(qe->type->elevator_owner);
	FUNC2(q, NULL);
	FUNC6(&q->sysfs_lock);

	return true;
}