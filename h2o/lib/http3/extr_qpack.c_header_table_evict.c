
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_qpack_header_table_t {scalar_t__ num_bytes; scalar_t__ max_size; int base_offset; TYPE_2__** first; TYPE_2__** last; } ;
struct TYPE_4__ {scalar_t__ value_len; TYPE_1__* name; } ;
struct TYPE_3__ {scalar_t__ len; } ;


 scalar_t__ HEADER_ENTRY_SIZE_OFFSET ;
 int assert (int) ;
 int h2o_mem_release_shared (TYPE_2__*) ;

__attribute__((used)) static void header_table_evict(struct st_h2o_qpack_header_table_t *table, size_t delta)
{
    while (table->first != table->last) {
        if (table->num_bytes + delta <= table->max_size)
            return;
        table->num_bytes -= (*table->first)->name->len + (*table->first)->value_len + HEADER_ENTRY_SIZE_OFFSET;
        h2o_mem_release_shared(*table->first);
        *table->first++ = ((void*)0);
        ++table->base_offset;
    }
    assert(table->num_bytes == 0);
}
