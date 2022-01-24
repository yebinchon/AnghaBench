#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  id; TYPE_1__* elevator; } ;
struct io_cq {int /*<<< orphan*/  __rcu_head; int /*<<< orphan*/  __rcu_icq_cache; int /*<<< orphan*/  q_node; int /*<<< orphan*/  ioc_node; struct request_queue* q; struct io_context* ioc; } ;
struct io_context {int /*<<< orphan*/  icq_hint; int /*<<< orphan*/  icq_tree; int /*<<< orphan*/  lock; } ;
struct elevator_type {int /*<<< orphan*/  icq_cache; } ;
struct TYPE_2__ {struct elevator_type* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  icq_free_icq_rcu ; 
 int /*<<< orphan*/  FUNC2 (struct io_cq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct io_cq* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct io_cq *icq)
{
	struct io_context *ioc = icq->ioc;
	struct request_queue *q = icq->q;
	struct elevator_type *et = q->elevator->type;

	FUNC4(&ioc->lock);

	FUNC5(&ioc->icq_tree, icq->q->id);
	FUNC1(&icq->ioc_node);
	FUNC3(&icq->q_node);

	/*
	 * Both setting lookup hint to and clearing it from @icq are done
	 * under queue_lock.  If it's not pointing to @icq now, it never
	 * will.  Hint assignment itself can race safely.
	 */
	if (FUNC6(ioc->icq_hint) == icq)
		FUNC7(ioc->icq_hint, NULL);

	FUNC2(icq);

	/*
	 * @icq->q might have gone away by the time RCU callback runs
	 * making it impossible to determine icq_cache.  Record it in @icq.
	 */
	icq->__rcu_icq_cache = et->icq_cache;
	FUNC0(&icq->__rcu_head, icq_free_icq_rcu);
}