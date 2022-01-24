#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rev_info {int dummy; } ;
struct object {int /*<<< orphan*/  oid; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct TYPE_2__ {struct object object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct object*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rev_info *revs,
				 struct commit_list *commit_list,
				 int whence,
				 unsigned flags)
{
	while (commit_list) {
		struct object *object = &commit_list->item->object;
		FUNC0(revs, object, FUNC1(&object->oid),
				whence, flags);
		commit_list = commit_list->next;
	}
}