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
struct spin_multi_state {int loops; int /*<<< orphan*/  exit_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  start_wait; int /*<<< orphan*/  enter_wait; } ;
struct spin_multi_per_thread {int /*<<< orphan*/  start; struct spin_multi_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *data)
{
	int loops;
	int cont;
	struct spin_multi_per_thread *pt = data;
	struct spin_multi_state *s = pt->state;

	loops = s->loops;
	cont = 1;

	FUNC0(&s->enter_wait);

	while (FUNC1(&s->enter_wait))
		; /* spin */

	pt->start = FUNC2();

	FUNC0(&s->start_wait);

	while (FUNC1(&s->start_wait))
		; /* spin */

	while (cont) {
		FUNC3(&s->lock);
		loops--;
		if (loops == 0)
			cont = 0;
		FUNC4(&s->lock);
	}

	FUNC0(&s->exit_wait);
	while (FUNC1(&s->exit_wait))
		; /* spin */
	return 0;
}