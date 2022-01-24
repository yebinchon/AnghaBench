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
struct string_list {int nr; TYPE_1__* items; } ;
struct commit_list {struct commit_list* next; TYPE_3__* item; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;
struct TYPE_4__ {char* string; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*) ; 

__attribute__((used)) static void FUNC5(struct commit_list *list)
{
	int i;
	struct string_list s = STRING_LIST_INIT_DUP;

	while (list) {
		FUNC2(&s, FUNC0(&list->item->object.oid));
		list = list->next;
	}

	FUNC4(&s);

	for (i = 0; i < s.nr; i++)
		FUNC1("%s\n", s.items[i].string);

	FUNC3(&s, 0);
}