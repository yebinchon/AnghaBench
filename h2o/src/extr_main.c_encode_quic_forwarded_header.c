
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int quicly_address_t ;


 int H2O_QUIC_FORWARDED_VERSION ;
 int * encode_quic_address (int *,int *) ;
 int * quicly_encode32 (int *,int ) ;

__attribute__((used)) static size_t encode_quic_forwarded_header(void *buf, quicly_address_t *destaddr, quicly_address_t *srcaddr, uint8_t ttl)
{
    uint8_t *dst = buf;

    *dst++ = 0x80;
    dst = quicly_encode32(dst, H2O_QUIC_FORWARDED_VERSION);
    dst = encode_quic_address(dst, destaddr);
    dst = encode_quic_address(dst, srcaddr);
    *dst++ = ttl;

    return dst - (uint8_t *)buf;
}
