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
typedef  int (* git_iterator_walk_cb ) (int /*<<< orphan*/  const**,void*) ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const**) ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/ ** FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 

int FUNC6(
	git_iterator **iterators,
	size_t cnt,
	git_iterator_walk_cb cb,
	void *data)
{
	const git_index_entry **iterator_item;	/* next in each iterator */
	const git_index_entry **cur_items;		/* current path in each iter */
	const git_index_entry *first_match;
	size_t i, j;
	int error = 0;

	iterator_item = FUNC1(cnt, sizeof(git_index_entry *));
	cur_items = FUNC1(cnt, sizeof(git_index_entry *));

	FUNC0(iterator_item);
	FUNC0(cur_items);

	/* Set up the iterators */
	for (i = 0; i < cnt; i++) {
		error = FUNC5(&iterator_item[i], iterators[i]);

		if (error < 0 && error != GIT_ITEROVER)
			goto done;
	}

	while (true) {
		for (i = 0; i < cnt; i++)
			cur_items[i] = NULL;

		first_match = NULL;

		/* Find the next path(s) to consume from each iterator */
		for (i = 0; i < cnt; i++) {
			if (iterator_item[i] == NULL)
				continue;

			if (first_match == NULL) {
				first_match = iterator_item[i];
				cur_items[i] = iterator_item[i];
			} else {
				int path_diff = FUNC3(iterator_item[i], first_match);

				if (path_diff < 0) {
					/* Found an index entry that sorts before the one we're
					 * looking at.  Forget that we've seen the other and
					 * look at the other iterators for this path.
					 */
					for (j = 0; j < i; j++)
						cur_items[j] = NULL;

					first_match = iterator_item[i];
					cur_items[i] = iterator_item[i];
				} else if (path_diff == 0) {
					cur_items[i] = iterator_item[i];
				}
			}
		}

		if (first_match == NULL)
			break;

		if ((error = cb(cur_items, data)) != 0)
			goto done;

		/* Advance each iterator that participated */
		for (i = 0; i < cnt; i++) {
			if (cur_items[i] == NULL)
				continue;

			error = FUNC4(&iterator_item[i], iterators[i]);

			if (error < 0 && error != GIT_ITEROVER)
				goto done;
		}
	}

done:
	FUNC2((git_index_entry **)iterator_item);
	FUNC2((git_index_entry **)cur_items);

	if (error == GIT_ITEROVER)
		error = 0;

	return error;
}