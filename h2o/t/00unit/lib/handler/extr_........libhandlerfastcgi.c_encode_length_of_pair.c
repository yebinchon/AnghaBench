
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *encode_length_of_pair(char *p, size_t len)
{
    if (len < 127) {
        *p++ = (char)len;
    } else {
        *p++ = (unsigned char)(len >> 24) | 0x80;
        *p++ = (unsigned char)(len >> 16);
        *p++ = (unsigned char)(len >> 8);
        *p++ = (unsigned char)len;
    }
    return p;
}
