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
struct string_list_item {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct string_list_item *item,
				      void *cb_data)
{
	int *empty_entry_found = cb_data;
	char *ceil = item->string;

	if (!*ceil) {
		*empty_entry_found = 1;
		return 0;
	} else if (!FUNC1(ceil)) {
		return 0;
	} else if (*empty_entry_found) {
		/* Keep entry but do not canonicalize it */
		return 1;
	} else {
		char *real_path = FUNC2(ceil, 0);
		if (!real_path) {
			return 0;
		}
		FUNC0(item->string);
		item->string = real_path;
		return 1;
	}
}