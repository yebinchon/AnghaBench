#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_hpack_header_table_entry_t {int dummy; } ;
struct TYPE_4__ {scalar_t__ num_entries; scalar_t__ hpack_size; scalar_t__ hpack_capacity; size_t entry_capacity; size_t entry_start_index; struct st_h2o_hpack_header_table_entry_t* entries; } ;
typedef  TYPE_1__ h2o_hpack_header_table_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_hpack_header_table_entry_t*) ; 
 struct st_h2o_hpack_header_table_entry_t* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct st_h2o_hpack_header_table_entry_t*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct st_h2o_hpack_header_table_entry_t *FUNC5(h2o_hpack_header_table_t *table, size_t size_add,
                                                                  size_t max_num_entries)
{
    /* adjust the size */
    while (table->num_entries != 0 && table->hpack_size + size_add > table->hpack_capacity)
        FUNC3(table);
    while (max_num_entries <= table->num_entries)
        FUNC3(table);
    if (table->num_entries == 0) {
        FUNC0(table->hpack_size == 0);
        if (size_add > table->hpack_capacity)
            return NULL;
    }
    table->hpack_size += size_add;

    /* grow the entries if full */
    if (table->num_entries == table->entry_capacity) {
        size_t new_capacity = table->num_entries * 2;
        if (new_capacity < 16)
            new_capacity = 16;
        struct st_h2o_hpack_header_table_entry_t *new_entries =
            FUNC2(new_capacity * sizeof(struct st_h2o_hpack_header_table_entry_t));
        if (table->num_entries != 0) {
            size_t src_index = table->entry_start_index, dst_index = 0;
            do {
                new_entries[dst_index] = table->entries[src_index];
                ++dst_index;
                src_index = (src_index + 1) % table->entry_capacity;
            } while (dst_index != table->num_entries);
        }
        FUNC4(new_entries + table->num_entries, 0, sizeof(*new_entries) * (new_capacity - table->num_entries));
        FUNC1(table->entries);
        table->entries = new_entries;
        table->entry_capacity = new_capacity;
        table->entry_start_index = 0;
    }

    ++table->num_entries;
    table->entry_start_index = (table->entry_start_index + table->entry_capacity - 1) % table->entry_capacity;
    return table->entries + table->entry_start_index;
}