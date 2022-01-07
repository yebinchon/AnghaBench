
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct st_h2o_qpack_header_table_t {int dummy; } ;
struct st_h2o_qpack_header_t {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ decode_int (scalar_t__*,int const**,int const*,unsigned int) ;
 char* h2o_qpack_err_invalid_dynamic_reference ;
 struct st_h2o_qpack_header_t* resolve_dynamic_abs (struct st_h2o_qpack_header_table_t*,scalar_t__,char const**) ;

__attribute__((used)) static struct st_h2o_qpack_header_t *resolve_dynamic(struct st_h2o_qpack_header_table_t *table, int64_t base_index,
                                                     const uint8_t **src, const uint8_t *src_end, unsigned prefix_bits,
                                                     const char **err_desc)
{
    int64_t off;

    if (decode_int(&off, src, src_end, prefix_bits) != 0 || off >= base_index) {
        *err_desc = h2o_qpack_err_invalid_dynamic_reference;
        return ((void*)0);
    }
    return resolve_dynamic_abs(table, base_index - off, err_desc);
}
