
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int inflight; scalar_t__ num_blocked; int max_blocked; scalar_t__ largest_known_received; int table; } ;
typedef TYPE_1__ h2o_qpack_encoder_t ;


 TYPE_1__* h2o_mem_alloc (int) ;
 int header_table_init (int *,int ) ;
 int memset (int *,int ,int) ;

h2o_qpack_encoder_t *h2o_qpack_create_encoder(uint32_t header_table_size, uint16_t max_blocked)
{
    h2o_qpack_encoder_t *qpack = h2o_mem_alloc(sizeof(*qpack));
    header_table_init(&qpack->table, header_table_size);
    qpack->largest_known_received = 0;
    qpack->max_blocked = max_blocked;
    qpack->num_blocked = 0;
    memset(&qpack->inflight, 0, sizeof(qpack->inflight));
    return qpack;
}
