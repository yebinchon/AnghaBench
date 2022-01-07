
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ base_offset; scalar_t__ last; scalar_t__ first; } ;
struct TYPE_5__ {scalar_t__ largest_known_received; TYPE_1__ table; } ;
typedef TYPE_2__ h2o_qpack_encoder_t ;


 int H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED ;

__attribute__((used)) static int handle_table_state_synchronize(h2o_qpack_encoder_t *qpack, int64_t insert_count, const char **err_desc)
{
    if (insert_count == 0)
        goto Error;

    int64_t new_value = qpack->largest_known_received + insert_count;
    if (new_value >= qpack->table.base_offset + qpack->table.last - qpack->table.first)
        goto Error;
    qpack->largest_known_received = new_value;

    return 0;
Error:
    *err_desc = "Table State Synchronize: invalid argument";
    return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
}
