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
struct binder_transaction {struct binder_thread* from; struct binder_transaction* from_parent; } ;
struct binder_thread {struct binder_transaction* transaction_stack; TYPE_1__* proc; } ;
struct TYPE_2__ {int /*<<< orphan*/  inner_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct binder_thread *target_thread,
					   struct binder_transaction *t)
{
	FUNC0(!target_thread);
	FUNC1(&target_thread->proc->inner_lock);
	FUNC0(target_thread->transaction_stack != t);
	FUNC0(target_thread->transaction_stack->from != target_thread);
	target_thread->transaction_stack =
		target_thread->transaction_stack->from_parent;
	t->from = NULL;
}