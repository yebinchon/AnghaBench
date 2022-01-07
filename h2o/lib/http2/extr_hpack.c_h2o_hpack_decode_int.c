
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;


 int H2O_HTTP2_ERROR_COMPRESSION ;
 int H2O_HTTP2_ERROR_INCOMPLETE ;
 scalar_t__ INT64_MAX ;

int64_t h2o_hpack_decode_int(const uint8_t **src, const uint8_t *src_end, unsigned prefix_bits)
{
    uint64_t value;
    unsigned shift;
    uint8_t prefix_max = (1 << prefix_bits) - 1;

    if (*src >= src_end)
        return H2O_HTTP2_ERROR_INCOMPLETE;

    value = *(*src)++ & prefix_max;
    if (value != prefix_max)
        return (int64_t)value;


    value = prefix_max;
    for (shift = 0; shift < 56; shift += 7) {
        if (*src == src_end)
            return H2O_HTTP2_ERROR_INCOMPLETE;
        value += (uint64_t)(**src & 127) << shift;
        if ((*(*src)++ & 128) == 0)
            return (int64_t)value;
    }

    if (*src == src_end)
        return H2O_HTTP2_ERROR_INCOMPLETE;
    if ((**src & 128) != 0)
        return H2O_HTTP2_ERROR_COMPRESSION;
    value += (uint64_t)(*(*src)++ & 127) << shift;
    if (value > (uint64_t)INT64_MAX)
        return H2O_HTTP2_ERROR_COMPRESSION;
    return value;
}
