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
struct acpi_table_header {int dummy; } ;
struct acpi_subtable_header {scalar_t__ type; } ;
struct acpi_pptt_cache {int flags; int /*<<< orphan*/  next_level_of_cache; int /*<<< orphan*/  attributes; } ;

/* Variables and functions */
 int ACPI_PPTT_CACHE_TYPE_VALID ; 
 scalar_t__ ACPI_PPTT_TYPE_CACHE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct acpi_pptt_cache* FUNC1 (struct acpi_table_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct acpi_table_header *table_hdr,
				int local_level,
				struct acpi_subtable_header *res,
				struct acpi_pptt_cache **found,
				int level, int type)
{
	struct acpi_pptt_cache *cache;

	if (res->type != ACPI_PPTT_TYPE_CACHE)
		return 0;

	cache = (struct acpi_pptt_cache *) res;
	while (cache) {
		local_level++;

		if (local_level == level &&
		    cache->flags & ACPI_PPTT_CACHE_TYPE_VALID &&
		    FUNC0(cache->attributes, type)) {
			if (*found != NULL && cache != *found)
				FUNC3("Found duplicate cache level/type unable to determine uniqueness\n");

			FUNC2("Found cache @ level %d\n", level);
			*found = cache;
			/*
			 * continue looking at this node's resource list
			 * to verify that we don't find a duplicate
			 * cache node.
			 */
		}
		cache = FUNC1(table_hdr, cache->next_level_of_cache);
	}
	return local_level;
}