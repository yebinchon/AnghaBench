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
typedef  size_t uint32_t ;
struct tffs_name_table_entry {size_t* id; char const* val; } ;
struct tffs_key_name_table {size_t size; struct tffs_name_table_entry* entries; } ;
struct tffs_entry {int /*<<< orphan*/ * val; int /*<<< orphan*/  header; } ;

/* Variables and functions */
 struct tffs_name_table_entry* FUNC0 (int,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct tffs_name_table_entry* FUNC3 (struct tffs_name_table_entry*,int) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(struct tffs_entry *names_entry,
			    struct tffs_key_name_table *key_names)
{
	uint32_t pos = 0, i = 0;
	struct tffs_name_table_entry *name_item;

	key_names->entries = FUNC0(sizeof(*name_item), 1);

	do {
		name_item = &key_names->entries[i];

		name_item->id = (uint32_t *) &names_entry->val[pos];
		pos += sizeof(*name_item->id);
		name_item->val = (const char *) &names_entry->val[pos];

		/*
		 * There is no "length" field because the string values are
		 * simply NULL-terminated -> strlen() gives us the size.
		 */
		pos += FUNC2(FUNC4(name_item->val) + 1);

		++i;
		key_names->entries = FUNC3(key_names->entries,
						sizeof(*name_item) * (i + 1));
	} while (pos < FUNC1(names_entry->header));

	key_names->size = i;
}