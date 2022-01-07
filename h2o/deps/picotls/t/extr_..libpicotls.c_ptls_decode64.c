
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int PTLS_ALERT_DECODE_ERROR ;
 int ntoh64 (int const*) ;

int ptls_decode64(uint64_t *value, const uint8_t **src, const uint8_t *end)
{
    if (end - *src < 8)
        return PTLS_ALERT_DECODE_ERROR;
    *value = ntoh64(*src);
    *src += 8;
    return 0;
}
