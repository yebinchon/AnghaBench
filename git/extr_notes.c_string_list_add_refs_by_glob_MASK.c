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
struct string_list {int /*<<< orphan*/  strdup_strings; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,struct string_list*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  string_list_add_one_ref ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

void FUNC7(struct string_list *list, const char *glob)
{
	FUNC0(list->strdup_strings);
	if (FUNC3(glob)) {
		FUNC1(string_list_add_one_ref, glob, list);
	} else {
		struct object_id oid;
		if (FUNC2(glob, &oid))
			FUNC6("notes ref %s is invalid", glob);
		if (!FUNC5(list, glob))
			FUNC4(list, glob);
	}
}