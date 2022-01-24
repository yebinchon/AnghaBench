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
struct string_list_item {struct ref* util; } ;
struct string_list {int dummy; } ;
struct ref {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (struct string_list*,int /*<<< orphan*/ ) ; 
 struct string_list_item* FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ref **ref, int nr)
{
	struct string_list names = STRING_LIST_INIT_NODUP;
	int src, dst;

	for (src = dst = 0; src < nr; src++) {
		struct string_list_item *item;
		item = FUNC1(&names, ref[src]->name);
		if (item->util)
			continue; /* already have it */
		item->util = ref[src];
		if (src != dst)
			ref[dst] = ref[src];
		dst++;
	}
	for (src = dst; src < nr; src++)
		ref[src] = NULL;
	FUNC0(&names, 0);
	return dst;
}