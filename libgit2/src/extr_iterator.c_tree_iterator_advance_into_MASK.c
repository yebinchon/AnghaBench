#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_iterator_frame ;
struct TYPE_4__ {int /*<<< orphan*/  tree_entry; } ;
typedef  TYPE_1__ tree_iterator_entry ;
typedef  int /*<<< orphan*/  tree_iterator ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(
	const git_index_entry **out, git_iterator *i)
{
	tree_iterator *iter = (tree_iterator *)i;
    tree_iterator_frame *frame;
	tree_iterator_entry *prev_entry;
	int error;

	if (out)
		*out = NULL;

	if ((frame = FUNC5(iter)) == NULL)
		return GIT_ITEROVER;

	/* get the last seen entry */
	prev_entry = FUNC4(frame);

	/* it's legal to call advance_into when auto-expand is on.  in this case,
	 * we will have pushed a new (empty) frame on to the stack for this
	 * new directory.  since it's empty, its current_entry should be null.
	 */
	FUNC0(FUNC2(i) ^ (prev_entry != NULL));

	if (prev_entry) {
		if (!FUNC1(prev_entry->tree_entry))
			return 0;

		if ((error = FUNC6(iter, prev_entry)) < 0)
			return error;
	}

	/* we've advanced into the directory in question, let advance
	 * find the first entry
	 */
	return FUNC3(out, i);
}