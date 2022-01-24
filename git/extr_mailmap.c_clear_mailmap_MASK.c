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
struct string_list {int strdup_strings; int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  free_mailmap_entry ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 

void FUNC2(struct string_list *map)
{
	FUNC0("mailmap: clearing %d entries...\n", map->nr);
	map->strdup_strings = 1;
	FUNC1(map, free_mailmap_entry);
	FUNC0("mailmap: cleared\n");
}