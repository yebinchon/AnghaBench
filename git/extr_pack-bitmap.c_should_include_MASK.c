#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object {int dummy; } ;
struct include_data {int /*<<< orphan*/  bitmap_git; } ;
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct TYPE_6__ {int /*<<< orphan*/  oid; } ;
struct commit {struct commit_list* parents; TYPE_3__ object; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct include_data*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct commit *commit, void *_data)
{
	struct include_data *data = _data;
	int bitmap_pos;

	bitmap_pos = FUNC1(data->bitmap_git, &commit->object.oid);
	if (bitmap_pos < 0)
		bitmap_pos = FUNC2(data->bitmap_git,
						  (struct object *)commit,
						  NULL);

	if (!FUNC0(data->bitmap_git, data, &commit->object.oid,
				bitmap_pos)) {
		struct commit_list *parent = commit->parents;

		while (parent) {
			parent->item->object.flags |= SEEN;
			parent = parent->next;
		}

		return 0;
	}

	return 1;
}