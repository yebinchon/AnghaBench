
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int quicly_address_t ;
struct TYPE_3__ {int len; scalar_t__ base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 scalar_t__ H2O_QUIC_FORWARDED_VERSION ;
 size_t SIZE_MAX ;
 int decode_quic_address (int *,int const**,int const*) ;
 scalar_t__ quicly_decode32 (int const**) ;

__attribute__((used)) static size_t decode_quic_forwarded_header(quicly_address_t *destaddr, quicly_address_t *srcaddr, uint8_t *ttl, h2o_iovec_t octets)
{
    const uint8_t *src = (uint8_t *)octets.base, *end = src + octets.len;

    if (end - src < 6)
        goto NotForwarded;
    if (*src++ != 0x80)
        goto NotForwarded;
    if (quicly_decode32(&src) != H2O_QUIC_FORWARDED_VERSION)
        goto NotForwarded;
    if (!decode_quic_address(destaddr, &src, end))
        goto NotForwarded;
    if (!decode_quic_address(srcaddr, &src, end))
        goto NotForwarded;
    if (end - src < 1)
        goto NotForwarded;
    *ttl = *src++;

    return src - (const uint8_t *)octets.base;
NotForwarded:
    return SIZE_MAX;
}
