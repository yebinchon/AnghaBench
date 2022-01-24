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
struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const struct string_list *list)
{
	int i;
	if (!list->nr)
		FUNC0("-\n");
	else {
		FUNC0("%s", list->items[0].string);
		for (i = 1; i < list->nr; i++)
			FUNC0(":%s", list->items[i].string);
		FUNC0("\n");
	}
}