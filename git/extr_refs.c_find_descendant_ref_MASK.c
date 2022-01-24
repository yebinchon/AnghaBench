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
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (struct string_list const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list const*,char const*) ; 

const char *FUNC3(const char *dirname,
				const struct string_list *extras,
				const struct string_list *skip)
{
	int pos;

	if (!extras)
		return NULL;

	/*
	 * Look at the place where dirname would be inserted into
	 * extras. If there is an entry at that position that starts
	 * with dirname (remember, dirname includes the trailing
	 * slash) and is not in skip, then we have a conflict.
	 */
	for (pos = FUNC1(extras, dirname, 0);
	     pos < extras->nr; pos++) {
		const char *extra_refname = extras->items[pos].string;

		if (!FUNC0(extra_refname, dirname))
			break;

		if (!skip || !FUNC2(skip, extra_refname))
			return extra_refname;
	}
	return NULL;
}