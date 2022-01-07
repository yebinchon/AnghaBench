
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



char *ptls_hexdump(char *buf, const void *_src, size_t len)
{
    char *dst = buf;
    const uint8_t *src = _src;
    size_t i;

    for (i = 0; i != len; ++i) {
        *dst++ = "0123456789abcdef"[src[i] >> 4];
        *dst++ = "0123456789abcdef"[src[i] & 0xf];
    }
    *dst++ = '\0';
    return buf;
}
