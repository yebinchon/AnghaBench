
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void h2o_hex_encode(char *dst, const void *_src, size_t src_len)
{
    const unsigned char *src = _src, *src_end = src + src_len;
    for (; src != src_end; ++src) {
        *dst++ = "0123456789abcdef"[*src >> 4];
        *dst++ = "0123456789abcdef"[*src & 0xf];
    }
    *dst = '\0';
}
