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
struct submodule {char* name; } ;
struct string_list {int dummy; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {TYPE_1__* two; } ;
struct collect_changed_submodules_cb_data {int /*<<< orphan*/  repo; struct object_id* commit_oid; struct string_list* changed; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  path; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct oid_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 
 struct oid_array* FUNC4 (struct string_list*,char const*) ; 
 struct submodule* FUNC5 (int /*<<< orphan*/ ,struct object_id const*,char const*) ; 
 struct submodule* FUNC6 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct diff_queue_struct *q,
					  struct diff_options *options,
					  void *data)
{
	struct collect_changed_submodules_cb_data *me = data;
	struct string_list *changed = me->changed;
	const struct object_id *commit_oid = me->commit_oid;
	int i;

	for (i = 0; i < q->nr; i++) {
		struct diff_filepair *p = q->queue[i];
		struct oid_array *commits;
		const struct submodule *submodule;
		const char *name;

		if (!FUNC0(p->two->mode))
			continue;

		submodule = FUNC6(me->repo,
						commit_oid, p->two->path);
		if (submodule)
			name = submodule->name;
		else {
			name = FUNC1(p->two->path);
			/* make sure name does not collide with existing one */
			if (name)
				submodule = FUNC5(me->repo,
								commit_oid, name);
			if (submodule) {
				FUNC7("Submodule in commit %s at path: "
					"'%s' collides with a submodule named "
					"the same. Skipping it.",
					FUNC3(commit_oid), p->two->path);
				name = NULL;
			}
		}

		if (!name)
			continue;

		commits = FUNC4(changed, name);
		FUNC2(commits, &p->two->oid);
	}
}