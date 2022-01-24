#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct object {int dummy; } ;
struct fsck_options {int (* walk ) (struct object*,int /*<<< orphan*/ ,void*,struct fsck_options*) ;} ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct commit {struct commit_list* parents; int /*<<< orphan*/  object; } ;
struct TYPE_4__ {struct object object; } ;
struct TYPE_3__ {struct object object; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_COMMIT ; 
 int /*<<< orphan*/  OBJ_TREE ; 
 TYPE_2__* FUNC0 (struct commit*) ; 
 char* FUNC1 (struct fsck_options*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsck_options*,struct object*,char*,...) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (struct object*,int /*<<< orphan*/ ,void*,struct fsck_options*) ; 
 int FUNC7 (struct object*,int /*<<< orphan*/ ,void*,struct fsck_options*) ; 

__attribute__((used)) static int FUNC8(struct commit *commit, void *data, struct fsck_options *options)
{
	int counter = 0, generation = 0, name_prefix_len = 0;
	struct commit_list *parents;
	int res;
	int result;
	const char *name;

	if (FUNC3(commit))
		return -1;

	name = FUNC1(options, &commit->object);
	if (name)
		FUNC4(options, &FUNC0(commit)->object,
				"%s:", name);

	result = options->walk((struct object *)FUNC0(commit),
			       OBJ_TREE, data, options);
	if (result < 0)
		return result;
	res = result;

	parents = commit->parents;
	if (name && parents) {
		int len = FUNC5(name), power;

		if (len && name[len - 1] == '^') {
			generation = 1;
			name_prefix_len = len - 1;
		}
		else { /* parse ~<generation> suffix */
			for (generation = 0, power = 1;
			     len && FUNC2(name[len - 1]);
			     power *= 10)
				generation += power * (name[--len] - '0');
			if (power > 1 && len && name[len - 1] == '~')
				name_prefix_len = len - 1;
		}
	}

	while (parents) {
		if (name) {
			struct object *obj = &parents->item->object;

			if (counter++)
				FUNC4(options, obj, "%s^%d",
					name, counter);
			else if (generation > 0)
				FUNC4(options, obj, "%.*s~%d",
					name_prefix_len, name, generation + 1);
			else
				FUNC4(options, obj, "%s^", name);
		}
		result = options->walk((struct object *)parents->item, OBJ_COMMIT, data, options);
		if (result < 0)
			return result;
		if (!res)
			res = result;
		parents = parents->next;
	}
	return res;
}