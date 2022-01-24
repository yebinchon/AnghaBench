#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_hpack_header_table_entry_t {TYPE_2__* value; TYPE_2__* name; } ;
struct TYPE_7__ {scalar_t__ num_entries; int /*<<< orphan*/  hpack_size; } ;
typedef  TYPE_1__ h2o_hpack_header_table_t ;
struct TYPE_8__ {scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ HEADER_TABLE_ENTRY_SIZE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct st_h2o_hpack_header_table_entry_t* FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct st_h2o_hpack_header_table_entry_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(h2o_hpack_header_table_t *table)
{
    struct st_h2o_hpack_header_table_entry_t *entry;
    FUNC0(table->num_entries != 0);

    entry = FUNC1(table, --table->num_entries);
    table->hpack_size -= entry->name->len + entry->value->len + HEADER_TABLE_ENTRY_SIZE_OFFSET;
    if (!FUNC2(entry->name))
        FUNC3(entry->name);
    if (!FUNC5(entry->value))
        FUNC3(entry->value);
    FUNC4(entry, 0, sizeof(*entry));
}