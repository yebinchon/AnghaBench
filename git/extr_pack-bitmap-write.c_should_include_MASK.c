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
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct commit {struct commit_list* parents; } ;
struct bitmap {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEN ; 
 int /*<<< orphan*/  FUNC0 (struct bitmap*,struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (struct object*) ; 

__attribute__((used)) static int
FUNC2(struct commit *commit, void *_data)
{
	struct bitmap *base = _data;

	if (!FUNC0(base, commit)) {
		struct commit_list *parent = commit->parents;

		FUNC1((struct object *)commit);

		while (parent) {
			parent->item->object.flags |= SEEN;
			FUNC1((struct object *)parent->item);
			parent = parent->next;
		}

		return 0;
	}

	return 1;
}