
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* entries; } ;
struct TYPE_6__ {TYPE_1__ inflight; int table; } ;
typedef TYPE_2__ h2o_qpack_encoder_t ;


 int free (TYPE_2__*) ;
 int header_table_dispose (int *) ;

void h2o_qpack_destroy_encoder(h2o_qpack_encoder_t *qpack)
{
    header_table_dispose(&qpack->table);
    free(qpack->inflight.entries);
    free(qpack);
}
