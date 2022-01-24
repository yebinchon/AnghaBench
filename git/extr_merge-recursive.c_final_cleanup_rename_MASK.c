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
struct rename {int /*<<< orphan*/  pair; } ;
struct TYPE_2__ {struct rename* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,int) ; 

__attribute__((used)) static void FUNC3(struct string_list *rename)
{
	const struct rename *re;
	int i;

	if (rename == NULL)
		return;

	for (i = 0; i < rename->nr; i++) {
		re = rename->items[i].util;
		FUNC0(re->pair);
	}
	FUNC2(rename, 1);
	FUNC1(rename);
}