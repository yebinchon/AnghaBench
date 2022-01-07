
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int QUICLY_TRANSPORT_ERROR_TRANSPORT_PARAMETER ;
 int UINT64_MAX ;
 int quicly_decodev (int const**,int const*) ;

int quicly_tls_decode_varint(uint64_t *value, const uint8_t **src, const uint8_t *end)
{
    if ((*value = quicly_decodev(src, end)) == UINT64_MAX)
        return QUICLY_TRANSPORT_ERROR_TRANSPORT_PARAMETER;
    return 0;
}
