
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline void
put_u32(void *buf, uint32_t val)
{
 uint8_t *p = buf;

 p[3] = val & 0xff;
 p[2] = (val >> 8) & 0xff;
 p[1] = (val >> 16) & 0xff;
 p[0] = (val >> 24) & 0xff;
}
