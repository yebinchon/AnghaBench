#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;
struct tree_desc {TYPE_1__ entry; scalar_t__ size; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 void* FUNC1 (struct tree_desc*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_desc*) ; 

__attribute__((used)) static int FUNC8(const struct object_id *hash1, const struct object_id *hash2)
{
	struct tree_desc one;
	struct tree_desc two;
	void *one_buf = FUNC1(&one, hash1);
	void *two_buf = FUNC1(&two, hash2);
	int score = 0;

	for (;;) {
		int cmp;

		if (one.size && two.size)
			cmp = FUNC0(&one.entry, &two.entry);
		else if (one.size)
			/* two lacks this entry */
			cmp = -1;
		else if (two.size)
			/* two has more entries */
			cmp = 1;
		else
			break;

		if (cmp < 0) {
			/* path1 does not appear in two */
			score += FUNC6(one.entry.mode);
			FUNC7(&one);
		} else if (cmp > 0) {
			/* path2 does not appear in one */
			score += FUNC6(two.entry.mode);
			FUNC7(&two);
		} else {
			/* path appears in both */
			if (!FUNC3(&one.entry.oid, &two.entry.oid)) {
				/* they are different */
				score += FUNC4(one.entry.mode,
						       two.entry.mode);
			} else {
				/* same subtree or blob */
				score += FUNC5(one.entry.mode,
						       two.entry.mode);
			}
			FUNC7(&one);
			FUNC7(&two);
		}
	}
	FUNC2(one_buf);
	FUNC2(two_buf);
	return score;
}