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
struct sched_param {int sched_priority; } ;
struct bL_thread {int wanted_cluster; int /*<<< orphan*/  lock; int /*<<< orphan*/  (* completer ) (void*) ;void* completer_cookie; int /*<<< orphan*/  wq; int /*<<< orphan*/  started; } ;
typedef  int /*<<< orphan*/  (* bL_switch_completion_handler ) (void*) ;

/* Variables and functions */
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(void *arg)
{
	struct bL_thread *t = arg;
	struct sched_param param = { .sched_priority = 1 };
	int cluster;
	bL_switch_completion_handler completer;
	void *completer_cookie;

	FUNC4(current, SCHED_FIFO, &param);
	FUNC1(&t->started);

	do {
		if (FUNC5(current))
			FUNC2(current);
		FUNC8(t->wq,
				t->wanted_cluster != -1 ||
				FUNC3());

		FUNC6(&t->lock);
		cluster = t->wanted_cluster;
		completer = t->completer;
		completer_cookie = t->completer_cookie;
		t->wanted_cluster = -1;
		t->completer = NULL;
		FUNC7(&t->lock);

		if (cluster != -1) {
			FUNC0(cluster);

			if (completer)
				completer(completer_cookie);
		}
	} while (!FUNC3());

	return 0;
}