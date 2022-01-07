
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline uint16_t __u_bswap16(uint16_t val)
{
 return ((val >> 8) & 0xffu) | ((val & 0xffu) << 8);
}
