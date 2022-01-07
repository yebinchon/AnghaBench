
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int buf ;


 int memcpy (scalar_t__*,char*,size_t) ;

__attribute__((used)) static uint8_t *encode_content_length(uint8_t *dst, size_t value)
{
    char buf[32], *p = buf + sizeof(buf);
    size_t l;

    do {
        *--p = '0' + value % 10;
    } while ((value /= 10) != 0);
    l = buf + sizeof(buf) - p;
    *dst++ = 0x0f;
    *dst++ = 0x0d;
    *dst++ = (uint8_t)l;
    memcpy(dst, p, l);
    dst += l;

    return dst;
}
