
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t get_be32(void *data)
{
 unsigned char *p = data;

 return (((uint32_t)p[0]) << 24) |
        (((uint32_t)p[1]) << 16) |
        (((uint32_t)p[2]) << 8) |
        ((uint32_t)p[3]);
}
