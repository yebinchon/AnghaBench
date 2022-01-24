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
struct seq_file {struct binder_transaction_log* private; } ;
struct binder_transaction_log {int /*<<< orphan*/ * entry; scalar_t__ full; int /*<<< orphan*/  cur; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ *) ; 

int FUNC3(struct seq_file *m, void *unused)
{
	struct binder_transaction_log *log = m->private;
	unsigned int log_cur = FUNC1(&log->cur);
	unsigned int count;
	unsigned int cur;
	int i;

	count = log_cur + 1;
	cur = count < FUNC0(log->entry) && !log->full ?
		0 : count % FUNC0(log->entry);
	if (count > FUNC0(log->entry) || log->full)
		count = FUNC0(log->entry);
	for (i = 0; i < count; i++) {
		unsigned int index = cur++ % FUNC0(log->entry);

		FUNC2(m, &log->entry[index]);
	}
	return 0;
}