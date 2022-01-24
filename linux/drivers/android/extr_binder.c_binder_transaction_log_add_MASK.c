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
struct binder_transaction_log_entry {int /*<<< orphan*/  debug_id_done; } ;
struct binder_transaction_log {int full; struct binder_transaction_log_entry* entry; int /*<<< orphan*/  cur; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct binder_transaction_log_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_transaction_log_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static struct binder_transaction_log_entry *FUNC5(
	struct binder_transaction_log *log)
{
	struct binder_transaction_log_entry *e;
	unsigned int cur = FUNC2(&log->cur);

	if (cur >= FUNC0(log->entry))
		log->full = true;
	e = &log->entry[cur % FUNC0(log->entry)];
	FUNC1(e->debug_id_done, 0);
	/*
	 * write-barrier to synchronize access to e->debug_id_done.
	 * We make sure the initialized 0 value is seen before
	 * memset() other fields are zeroed by memset.
	 */
	FUNC4();
	FUNC3(e, 0, sizeof(*e));
	return e;
}