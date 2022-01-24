#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  tree; int /*<<< orphan*/  commit; int /*<<< orphan*/  index; } ;
typedef  TYPE_2__ git_annotated_commit ;

/* Variables and functions */
 scalar_t__ GIT_ANNOTATED_COMMIT_VIRTUAL ; 
 int /*<<< orphan*/  GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(
	git_iterator **out,
	git_annotated_commit *commit)
{
	git_iterator_options opts = GIT_ITERATOR_OPTIONS_INIT;
	int error;

	opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

	if (commit == NULL) {
		error = FUNC3(out, &opts);
	} else if (commit->type == GIT_ANNOTATED_COMMIT_VIRTUAL) {
		error = FUNC2(out, FUNC1(commit->index), commit->index, &opts);
	} else {
		if (!commit->tree &&
			(error = FUNC0(&commit->tree, commit->commit)) < 0)
			goto done;

		error = FUNC4(out, commit->tree, &opts);
	}

done:
	return error;
}