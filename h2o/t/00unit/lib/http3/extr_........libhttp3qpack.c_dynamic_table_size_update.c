
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ max_size; } ;
struct TYPE_4__ {scalar_t__ header_table_size; TYPE_2__ table; } ;
typedef TYPE_1__ h2o_qpack_decoder_t ;


 int H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED ;
 char* h2o_qpack_err_invalid_max_size ;
 int header_table_evict (TYPE_2__*,int ) ;

__attribute__((used)) static int dynamic_table_size_update(h2o_qpack_decoder_t *qpack, int64_t max_size, const char **err_desc)
{
    if (max_size > qpack->header_table_size) {
        *err_desc = h2o_qpack_err_invalid_max_size;
        return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
    }

    qpack->table.max_size = max_size;
    header_table_evict(&qpack->table, 0);
    return 0;
}
