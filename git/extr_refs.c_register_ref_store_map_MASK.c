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
struct ref_store_hash_entry {int /*<<< orphan*/  ent; } ;
struct ref_store {int dummy; } ;
struct hashmap {int /*<<< orphan*/  tablesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 struct ref_store_hash_entry* FUNC1 (char const*,struct ref_store*) ; 
 int /*<<< orphan*/  FUNC2 (struct hashmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ref_store_hash_cmp ; 

__attribute__((used)) static void FUNC4(struct hashmap *map,
				   const char *type,
				   struct ref_store *refs,
				   const char *name)
{
	struct ref_store_hash_entry *entry;

	if (!map->tablesize)
		FUNC2(map, ref_store_hash_cmp, NULL, 0);

	entry = FUNC1(name, refs);
	if (FUNC3(map, &entry->ent))
		FUNC0("%s ref_store '%s' initialized twice", type, name);
}