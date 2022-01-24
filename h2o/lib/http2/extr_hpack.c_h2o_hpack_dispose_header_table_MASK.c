#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_hpack_header_table_entry_t {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ num_entries; size_t entry_start_index; size_t entry_capacity; struct st_h2o_hpack_header_table_entry_t* entries; } ;
typedef  TYPE_1__ h2o_hpack_header_table_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_hpack_header_table_entry_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(h2o_hpack_header_table_t *header_table)
{
    if (header_table->num_entries != 0) {
        size_t index = header_table->entry_start_index;
        do {
            struct st_h2o_hpack_header_table_entry_t *entry = header_table->entries + index;
            if (!FUNC1(entry->name))
                FUNC2(entry->name);
            if (!FUNC3(entry->value))
                FUNC2(entry->value);
            index = (index + 1) % header_table->entry_capacity;
        } while (--header_table->num_entries != 0);
    }
    FUNC0(header_table->entries);
}