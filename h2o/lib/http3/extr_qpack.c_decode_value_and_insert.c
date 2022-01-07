
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_qpack_header_t {scalar_t__ value_len; TYPE_1__* name; int value; } ;
struct TYPE_7__ {scalar_t__ max_size; } ;
struct TYPE_8__ {TYPE_2__ table; } ;
typedef TYPE_3__ h2o_qpack_decoder_t ;
struct TYPE_6__ {scalar_t__ len; } ;


 int H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED ;
 scalar_t__ HEADER_ENTRY_SIZE_OFFSET ;
 scalar_t__ SIZE_MAX ;
 scalar_t__ decode_value (int,int const*,size_t,int ,char const**) ;
 int decoder_insert (TYPE_3__*,struct st_h2o_qpack_header_t*) ;
 int h2o_mem_release_shared (struct st_h2o_qpack_header_t*) ;
 char* h2o_qpack_err_header_exceeds_table_size ;

__attribute__((used)) static int decode_value_and_insert(h2o_qpack_decoder_t *qpack, struct st_h2o_qpack_header_t *header, int is_huff,
                                   const uint8_t *qstr, size_t qstrlen, const char **err_desc)
{
    if ((header->value_len = decode_value(is_huff, qstr, qstrlen, header->value, err_desc)) == SIZE_MAX)
        goto Fail;
    if (header->name->len + header->value_len + HEADER_ENTRY_SIZE_OFFSET > qpack->table.max_size) {
        *err_desc = h2o_qpack_err_header_exceeds_table_size;
        goto Fail;
    }
    decoder_insert(qpack, header);
    return 0;
Fail:
    h2o_mem_release_shared(header);
    return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
}
