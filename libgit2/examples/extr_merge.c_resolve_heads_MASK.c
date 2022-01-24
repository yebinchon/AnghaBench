#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t heads_count; char** heads; size_t annotated_count; int /*<<< orphan*/ ** annotated; } ;
typedef  TYPE_1__ merge_options ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
struct TYPE_5__ {char* message; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(git_repository *repo, merge_options *opts)
{
	git_annotated_commit **annotated = FUNC0(opts->heads_count, sizeof(git_annotated_commit *));
	size_t annotated_count = 0, i;
	int err = 0;

	for (i = 0; i < opts->heads_count; i++) {
		err = FUNC4(&annotated[annotated_count++], repo, opts->heads[i]);
		if (err != 0) {
			FUNC1(stderr, "failed to resolve refish %s: %s\n", opts->heads[i], FUNC3()->message);
			annotated_count--;
			continue;
		}
	}

	if (annotated_count != opts->heads_count) {
		FUNC1(stderr, "unable to parse some refish\n");
		FUNC2(annotated);
		return -1;
	}

	opts->annotated = annotated;
	opts->annotated_count = annotated_count;
	return 0;
}