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
struct hashmap_entry {int dummy; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hashmap*,struct hashmap_entry*) ; 
 struct hashmap_entry* FUNC1 (struct hashmap*,struct hashmap_entry*,int /*<<< orphan*/ *) ; 

struct hashmap_entry *FUNC2(struct hashmap *map,
				struct hashmap_entry *entry)
{
	struct hashmap_entry *old = FUNC1(map, entry, NULL);
	FUNC0(map, entry);
	return old;
}