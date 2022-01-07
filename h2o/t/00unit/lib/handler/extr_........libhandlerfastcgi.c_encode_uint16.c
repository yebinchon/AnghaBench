
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void encode_uint16(void *_p, unsigned v)
{
    unsigned char *p = _p;
    p[0] = (unsigned char)(v >> 8);
    p[1] = (unsigned char)v;
}
