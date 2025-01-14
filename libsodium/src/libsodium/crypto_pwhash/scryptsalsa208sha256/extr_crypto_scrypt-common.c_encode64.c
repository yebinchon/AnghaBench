
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 scalar_t__* encode64_uint32 (scalar_t__*,size_t,int,int) ;

__attribute__((used)) static uint8_t *
encode64(uint8_t *dst, size_t dstlen, const uint8_t *src, size_t srclen)
{
    size_t i;

    for (i = 0; i < srclen;) {
        uint8_t *dnext;
        uint32_t value = 0, bits = 0;

        do {
            value |= (uint32_t) src[i++] << bits;
            bits += 8;
        } while (bits < 24 && i < srclen);

        dnext = encode64_uint32(dst, dstlen, value, bits);
        if (!dnext) {
            return ((void*)0);
        }
        dstlen -= dnext - dst;
        dst = dnext;
    }
    return dst;
}
