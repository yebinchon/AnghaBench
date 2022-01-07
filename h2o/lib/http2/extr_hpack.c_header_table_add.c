
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_hpack_header_table_entry_t {int dummy; } ;
struct TYPE_4__ {scalar_t__ num_entries; scalar_t__ hpack_size; scalar_t__ hpack_capacity; size_t entry_capacity; size_t entry_start_index; struct st_h2o_hpack_header_table_entry_t* entries; } ;
typedef TYPE_1__ h2o_hpack_header_table_t ;


 int assert (int) ;
 int free (struct st_h2o_hpack_header_table_entry_t*) ;
 struct st_h2o_hpack_header_table_entry_t* h2o_mem_alloc (size_t) ;
 int header_table_evict_one (TYPE_1__*) ;
 int memset (struct st_h2o_hpack_header_table_entry_t*,int ,int) ;

__attribute__((used)) static struct st_h2o_hpack_header_table_entry_t *header_table_add(h2o_hpack_header_table_t *table, size_t size_add,
                                                                  size_t max_num_entries)
{

    while (table->num_entries != 0 && table->hpack_size + size_add > table->hpack_capacity)
        header_table_evict_one(table);
    while (max_num_entries <= table->num_entries)
        header_table_evict_one(table);
    if (table->num_entries == 0) {
        assert(table->hpack_size == 0);
        if (size_add > table->hpack_capacity)
            return ((void*)0);
    }
    table->hpack_size += size_add;


    if (table->num_entries == table->entry_capacity) {
        size_t new_capacity = table->num_entries * 2;
        if (new_capacity < 16)
            new_capacity = 16;
        struct st_h2o_hpack_header_table_entry_t *new_entries =
            h2o_mem_alloc(new_capacity * sizeof(struct st_h2o_hpack_header_table_entry_t));
        if (table->num_entries != 0) {
            size_t src_index = table->entry_start_index, dst_index = 0;
            do {
                new_entries[dst_index] = table->entries[src_index];
                ++dst_index;
                src_index = (src_index + 1) % table->entry_capacity;
            } while (dst_index != table->num_entries);
        }
        memset(new_entries + table->num_entries, 0, sizeof(*new_entries) * (new_capacity - table->num_entries));
        free(table->entries);
        table->entries = new_entries;
        table->entry_capacity = new_capacity;
        table->entry_start_index = 0;
    }

    ++table->num_entries;
    table->entry_start_index = (table->entry_start_index + table->entry_capacity - 1) % table->entry_capacity;
    return table->entries + table->entry_start_index;
}
