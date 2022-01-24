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
struct string_list {scalar_t__ nr; TYPE_1__* items; scalar_t__ strdup_strings; } ;
struct TYPE_3__ {int /*<<< orphan*/  util; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct string_list*,char const*,int*) ; 

void FUNC3(struct string_list *list, const char *string,
			int free_util)
{
	int exact_match;
	int i = FUNC2(list, string, &exact_match);

	if (exact_match) {
		if (list->strdup_strings)
			FUNC1(list->items[i].string);
		if (free_util)
			FUNC1(list->items[i].util);

		list->nr--;
		FUNC0(list->items + i, list->items + i + 1, list->nr - i);
	}
}