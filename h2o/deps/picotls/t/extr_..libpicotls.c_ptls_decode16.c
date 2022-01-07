
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int PTLS_ALERT_DECODE_ERROR ;
 int ntoh16 (int const*) ;

int ptls_decode16(uint16_t *value, const uint8_t **src, const uint8_t *end)
{
    if (end - *src < 2)
        return PTLS_ALERT_DECODE_ERROR;
    *value = ntoh16(*src);
    *src += 2;
    return 0;
}
