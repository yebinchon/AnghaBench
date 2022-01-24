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
struct merge_msg_entry {int dummy; } ;
typedef  int /*<<< orphan*/  git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct merge_msg_entry*) ; 

__attribute__((used)) static int FUNC2(
	git_vector *v,
	const struct merge_msg_entry *entries,
	size_t len,
	int (*match)(const struct merge_msg_entry *entry, git_vector *entries))
{
	size_t i;
	int matches, total = 0;

	FUNC0(v);

	for (i = 0; i < len; i++) {
		if ((matches = match(&entries[i], v)) < 0)
			return matches;
		else if (!matches)
			continue;

		FUNC1(v, (struct merge_msg_entry *)&entries[i]);
		total++;
	}

	return total;
}