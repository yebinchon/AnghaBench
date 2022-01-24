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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct string_list_item *item, void *unused)
{
	char *ceil = item->string;

	if (!*ceil)
		FUNC0("Empty path is not supported");
	if (!FUNC1(ceil))
		FUNC0("Path \"%s\" is not absolute", ceil);
	if (FUNC2(ceil, ceil) < 0)
		FUNC0("Path \"%s\" could not be normalized", ceil);
	return 1;
}