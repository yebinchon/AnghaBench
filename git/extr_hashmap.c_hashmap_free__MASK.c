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
struct hashmap_iter {int dummy; } ;
struct hashmap_entry {int dummy; } ;
struct hashmap {char* table; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hashmap*,struct hashmap_iter*) ; 
 struct hashmap_entry* FUNC2 (struct hashmap_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct hashmap*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct hashmap *map, ssize_t entry_offset)
{
	if (!map || !map->table)
		return;
	if (entry_offset >= 0) { /* called by hashmap_free_entries */
		struct hashmap_iter iter;
		struct hashmap_entry *e;

		FUNC1(map, &iter);
		while ((e = FUNC2(&iter)))
			/*
			 * like container_of, but using caller-calculated
			 * offset (caller being hashmap_free_entries)
			 */
			FUNC0((char *)e - entry_offset);
	}
	FUNC0(map->table);
	FUNC3(map, 0, sizeof(*map));
}