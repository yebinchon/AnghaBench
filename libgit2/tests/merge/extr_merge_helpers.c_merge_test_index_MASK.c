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
struct merge_index_entry {int dummy; } ;
typedef  int /*<<< orphan*/  git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct merge_index_entry const*,int /*<<< orphan*/  const*) ; 

int FUNC3(git_index *index, const struct merge_index_entry expected[], size_t expected_len)
{
	size_t i;
	const git_index_entry *index_entry;

	/*
	merge__dump_index_entries(&index->entries);
	*/

	if (FUNC0(index) != expected_len)
		return 0;

	for (i = 0; i < expected_len; i++) {
		if ((index_entry = FUNC1(index, i)) == NULL)
			return 0;

		if (!FUNC2(&expected[i], index_entry))
			return 0;
	}

	return 1;
}