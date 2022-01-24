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
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char*,char,int) ; 
 char* FUNC5 (char const*) ; 

void FUNC6(struct string_list *list,
					 const char *globs)
{
	struct string_list split = STRING_LIST_INIT_NODUP;
	char *globs_copy = FUNC5(globs);
	int i;

	FUNC4(&split, globs_copy, ':', -1);
	FUNC3(&split, 0);

	for (i = 0; i < split.nr; i++)
		FUNC1(list, split.items[i].string);

	FUNC2(&split, 0);
	FUNC0(globs_copy);
}