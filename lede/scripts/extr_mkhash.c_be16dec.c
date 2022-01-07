
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t
be16dec(const void *buf)
{
 const uint8_t *p = buf;

 return (((uint16_t) p[0]) << 8) | p[1];
}
