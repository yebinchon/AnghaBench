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
 int /*<<< orphan*/  PACKDIR_FILE_GARBAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static void FUNC6(struct string_list *list)
{
	int i, baselen = -1, first = 0, seen_bits = 0;

	if (!&report_garbage)
		return;

	FUNC3(list);

	for (i = 0; i < list->nr; i++) {
		const char *path = list->items[i].string;
		if (baselen != -1 &&
		    FUNC4(path, list->items[first].string, baselen)) {
			FUNC1(list, seen_bits, first, i);
			baselen = -1;
			seen_bits = 0;
		}
		if (baselen == -1) {
			const char *dot = FUNC5(path, '.');
			if (!dot) {
				FUNC0(PACKDIR_FILE_GARBAGE, path);
				continue;
			}
			baselen = dot - path + 1;
			first = i;
		}
		if (!FUNC2(path + baselen, "pack"))
			seen_bits |= 1;
		else if (!FUNC2(path + baselen, "idx"))
			seen_bits |= 2;
	}
	FUNC1(list, seen_bits, first, list->nr);
}