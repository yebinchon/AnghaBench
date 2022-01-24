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
struct seq_file {int dummy; } ;
struct binder_stats {int /*<<< orphan*/ * obj_deleted; int /*<<< orphan*/ * obj_created; int /*<<< orphan*/ * br; int /*<<< orphan*/ * bc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * binder_command_strings ; 
 int /*<<< orphan*/ * binder_objstat_strings ; 
 int /*<<< orphan*/ * binder_return_strings ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char const*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m, const char *prefix,
			       struct binder_stats *stats)
{
	int i;

	FUNC1(FUNC0(stats->bc) !=
		     FUNC0(binder_command_strings));
	for (i = 0; i < FUNC0(stats->bc); i++) {
		int temp = FUNC2(&stats->bc[i]);

		if (temp)
			FUNC3(m, "%s%s: %d\n", prefix,
				   binder_command_strings[i], temp);
	}

	FUNC1(FUNC0(stats->br) !=
		     FUNC0(binder_return_strings));
	for (i = 0; i < FUNC0(stats->br); i++) {
		int temp = FUNC2(&stats->br[i]);

		if (temp)
			FUNC3(m, "%s%s: %d\n", prefix,
				   binder_return_strings[i], temp);
	}

	FUNC1(FUNC0(stats->obj_created) !=
		     FUNC0(binder_objstat_strings));
	FUNC1(FUNC0(stats->obj_created) !=
		     FUNC0(stats->obj_deleted));
	for (i = 0; i < FUNC0(stats->obj_created); i++) {
		int created = FUNC2(&stats->obj_created[i]);
		int deleted = FUNC2(&stats->obj_deleted[i]);

		if (created || deleted)
			FUNC3(m, "%s%s: active %d total %d\n",
				prefix,
				binder_objstat_strings[i],
				created - deleted,
				created);
	}
}