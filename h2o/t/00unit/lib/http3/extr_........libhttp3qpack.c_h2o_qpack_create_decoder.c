
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int header_table_size; int max_entries; int blocked_streams; int table; int max_blocked; scalar_t__ total_inserts; scalar_t__ insert_count; } ;
typedef TYPE_1__ h2o_qpack_decoder_t ;


 TYPE_1__* h2o_mem_alloc (int) ;
 int header_table_init (int *,int) ;
 int memset (int *,int ,int) ;

h2o_qpack_decoder_t *h2o_qpack_create_decoder(uint32_t header_table_size, uint16_t max_blocked)
{
    h2o_qpack_decoder_t *qpack = h2o_mem_alloc(sizeof(*qpack));

    qpack->insert_count = 0;
    qpack->header_table_size = header_table_size;
    qpack->max_entries = header_table_size / 32;
    qpack->total_inserts = 0;
    qpack->max_blocked = max_blocked;
    header_table_init(&qpack->table, qpack->header_table_size);
    memset(&qpack->blocked_streams, 0, sizeof(qpack->blocked_streams));

    return qpack;
}
