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
struct binder_transaction {int /*<<< orphan*/  lock; struct binder_thread* from; } ;
struct binder_thread {int /*<<< orphan*/  tmp_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct binder_thread *FUNC3(
		struct binder_transaction *t)
{
	struct binder_thread *from;

	FUNC1(&t->lock);
	from = t->from;
	if (from)
		FUNC0(&from->tmp_ref);
	FUNC2(&t->lock);
	return from;
}