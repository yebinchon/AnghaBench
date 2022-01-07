
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long checksum(unsigned long *addr, int len)
{
 unsigned long csum = 0;

 len /= sizeof(*addr);
 while (len-- > 0)
  csum ^= *addr++;
 csum = ((csum>>1) & 0x55555555) ^ (csum & 0x55555555);

 return csum;
}
