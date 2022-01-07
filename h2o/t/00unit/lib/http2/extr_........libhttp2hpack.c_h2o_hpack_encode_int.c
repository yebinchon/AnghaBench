
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;


 int assert (int) ;
 scalar_t__ encode_int_is_onebyte (int,unsigned int) ;

uint8_t *h2o_hpack_encode_int(uint8_t *dst, int64_t value, unsigned prefix_bits)
{
    if (encode_int_is_onebyte(value, prefix_bits)) {
        *dst++ |= value;
    } else {

        assert(value >= 0);
        value -= (1 << prefix_bits) - 1;
        *dst++ |= (1 << prefix_bits) - 1;
        for (; value >= 128; value >>= 7) {
            *dst++ = 0x80 | value;
        }
        *dst++ = value;
    }
    return dst;
}
