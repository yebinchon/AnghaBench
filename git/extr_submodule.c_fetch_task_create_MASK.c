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
struct repository {int dummy; } ;
struct fetch_task {int free_sub; scalar_t__ sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fetch_task*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct fetch_task*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  null_oid ; 
 scalar_t__ FUNC3 (struct repository*,int /*<<< orphan*/ *,char const*) ; 
 struct fetch_task* FUNC4 (int) ; 

__attribute__((used)) static struct fetch_task *FUNC5(struct repository *r,
					    const char *path)
{
	struct fetch_task *task = FUNC4(sizeof(*task));
	FUNC2(task, 0, sizeof(*task));

	task->sub = FUNC3(r, &null_oid, path);
	if (!task->sub) {
		/*
		 * No entry in .gitmodules? Technically not a submodule,
		 * but historically we supported repositories that happen to be
		 * in-place where a gitlink is. Keep supporting them.
		 */
		task->sub = FUNC1(path);
		if (!task->sub) {
			FUNC0(task);
			return NULL;
		}

		task->free_sub = 1;
	}

	return task;
}