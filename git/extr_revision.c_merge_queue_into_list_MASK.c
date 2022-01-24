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
struct prio_queue {scalar_t__ nr; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct commit {scalar_t__ date; } ;
struct TYPE_2__ {scalar_t__ date; } ;

/* Variables and functions */
 struct commit_list* FUNC0 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (struct prio_queue*) ; 
 struct commit* FUNC2 (struct prio_queue*) ; 

__attribute__((used)) static void FUNC3(struct prio_queue *q, struct commit_list **list)
{
	while (q->nr) {
		struct commit *item = FUNC2(q);
		struct commit_list *p = *list;

		if (p && p->item->date >= item->date)
			list = &p->next;
		else {
			p = FUNC0(item, list);
			list = &p->next; /* skip newly added item */
			FUNC1(q); /* pop item */
		}
	}
}