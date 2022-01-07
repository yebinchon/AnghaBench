
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int PTLS_ALERT_DECODE_ERROR ;

int ptls_decode24(uint32_t *value, const uint8_t **src, const uint8_t *end)
{
    if (end - *src < 3)
        return PTLS_ALERT_DECODE_ERROR;
    *value = ((uint32_t)(*src)[0] << 16) | ((uint32_t)(*src)[1] << 8) | (*src)[2];
    *src += 3;
    return 0;
}
