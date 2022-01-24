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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stage_new_file ; 

__attribute__((used)) static int FUNC5(
	git_index **out,
	git_tree *parent_tree,
	git_tree *tree)
{
	git_iterator *iterators[2] = { NULL, NULL };
	git_iterator_options iterator_options = GIT_ITERATOR_OPTIONS_INIT;
	git_index *index = NULL;
	int error;

	if ((error = FUNC1(&index)) < 0 ||
		(error = FUNC2(
			&iterators[0], parent_tree, &iterator_options)) < 0 ||
		(error = FUNC2(
			&iterators[1], tree, &iterator_options)) < 0)
		goto done;

	error = FUNC4(iterators, 2, stage_new_file, index);

done:
	if (error < 0)
		FUNC0(index);
	else
		*out = index;

	FUNC3(iterators[0]);
	FUNC3(iterators[1]);

	return error;
}