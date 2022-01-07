
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline uint16_t
get_u16(const void *buf)
{
 const uint8_t *p = buf;

 return ((uint16_t) p[1] + ((uint16_t) p[0] << 8));
}
