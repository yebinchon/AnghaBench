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
struct hashmap_entry {struct hashmap_entry* next; } ;
struct hashmap {struct hashmap_entry** table; } ;

/* Variables and functions */
 size_t FUNC0 (struct hashmap const*,struct hashmap_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (struct hashmap const*,struct hashmap_entry*,struct hashmap_entry const*,void const*) ; 

__attribute__((used)) static inline struct hashmap_entry **FUNC2(const struct hashmap *map,
		const struct hashmap_entry *key, const void *keydata)
{
	struct hashmap_entry **e = &map->table[FUNC0(map, key)];
	while (*e && !FUNC1(map, *e, key, keydata))
		e = &(*e)->next;
	return e;
}