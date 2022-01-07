
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct st_h2o_hpack_header_table_entry_t {TYPE_2__* value; TYPE_2__* name; } ;
struct TYPE_7__ {scalar_t__ num_entries; int hpack_size; } ;
typedef TYPE_1__ h2o_hpack_header_table_t ;
struct TYPE_8__ {scalar_t__ len; } ;


 scalar_t__ HEADER_TABLE_ENTRY_SIZE_OFFSET ;
 int assert (int) ;
 struct st_h2o_hpack_header_table_entry_t* h2o_hpack_header_table_get (TYPE_1__*,scalar_t__) ;
 int h2o_iovec_is_token (TYPE_2__*) ;
 int h2o_mem_release_shared (TYPE_2__*) ;
 int memset (struct st_h2o_hpack_header_table_entry_t*,int ,int) ;
 int value_is_part_of_static_table (TYPE_2__*) ;

__attribute__((used)) static void header_table_evict_one(h2o_hpack_header_table_t *table)
{
    struct st_h2o_hpack_header_table_entry_t *entry;
    assert(table->num_entries != 0);

    entry = h2o_hpack_header_table_get(table, --table->num_entries);
    table->hpack_size -= entry->name->len + entry->value->len + HEADER_TABLE_ENTRY_SIZE_OFFSET;
    if (!h2o_iovec_is_token(entry->name))
        h2o_mem_release_shared(entry->name);
    if (!value_is_part_of_static_table(entry->value))
        h2o_mem_release_shared(entry->value);
    memset(entry, 0, sizeof(*entry));
}
