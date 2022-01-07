
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_hpack_header_table_entry_t {int value; int name; } ;
struct TYPE_3__ {scalar_t__ num_entries; size_t entry_start_index; size_t entry_capacity; struct st_h2o_hpack_header_table_entry_t* entries; } ;
typedef TYPE_1__ h2o_hpack_header_table_t ;


 int free (struct st_h2o_hpack_header_table_entry_t*) ;
 int h2o_iovec_is_token (int ) ;
 int h2o_mem_release_shared (int ) ;
 int value_is_part_of_static_table (int ) ;

void h2o_hpack_dispose_header_table(h2o_hpack_header_table_t *header_table)
{
    if (header_table->num_entries != 0) {
        size_t index = header_table->entry_start_index;
        do {
            struct st_h2o_hpack_header_table_entry_t *entry = header_table->entries + index;
            if (!h2o_iovec_is_token(entry->name))
                h2o_mem_release_shared(entry->name);
            if (!value_is_part_of_static_table(entry->value))
                h2o_mem_release_shared(entry->value);
            index = (index + 1) % header_table->entry_capacity;
        } while (--header_table->num_entries != 0);
    }
    free(header_table->entries);
}
