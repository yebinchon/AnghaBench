
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int h2o_mem_pool_t ;
struct TYPE_15__ {int size; TYPE_3__* entries; } ;
typedef TYPE_4__ h2o_iovec_vector_t ;
struct TYPE_16__ {int num_entries; } ;
typedef TYPE_5__ h2o_hpack_header_table_t ;
struct TYPE_17__ {TYPE_2__* value; TYPE_1__* name; } ;
typedef TYPE_6__ h2o_hpack_header_table_entry_t ;
struct TYPE_14__ {int len; } ;
struct TYPE_13__ {int base; scalar_t__ len; } ;
struct TYPE_12__ {int base; scalar_t__ len; } ;


 int append_chunk (int *,TYPE_4__*,char*,int,int ,int,int ) ;
 TYPE_6__* h2o_hpack_header_table_get (TYPE_5__*,int) ;

__attribute__((used)) static void append_header_table_chunks(h2o_mem_pool_t *pool, h2o_iovec_vector_t *chunks, h2o_hpack_header_table_t *header_table)
{
    int i;
    for (i = 0; i < header_table->num_entries; i++) {
        h2o_hpack_header_table_entry_t *entry = h2o_hpack_header_table_get(header_table, i);
        append_chunk(pool, chunks,
                     "\n"
                     "      [ \"%.*s\", \"%.*s\" ],",
                     (int)entry->name->len, entry->name->base, (int)entry->value->len, entry->value->base);
    }

    if (i > 0) {

        --chunks->entries[chunks->size - 1].len;
    }
}
