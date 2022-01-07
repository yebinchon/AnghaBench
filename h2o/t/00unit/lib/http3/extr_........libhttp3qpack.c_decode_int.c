
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ H2O_HTTP2_ERROR_INCOMPLETE ;
 int H2O_HTTP3_ERROR_INCOMPLETE ;
 int H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED ;
 scalar_t__ h2o_hpack_decode_int (int const**,int const*,unsigned int) ;

__attribute__((used)) static int decode_int(int64_t *value, const uint8_t **src, const uint8_t *src_end, unsigned prefix_bits)
{
    if ((*value = h2o_hpack_decode_int(src, src_end, prefix_bits)) < 0)
        return *value == H2O_HTTP2_ERROR_INCOMPLETE ? H2O_HTTP3_ERROR_INCOMPLETE : H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
    return 0;
}
