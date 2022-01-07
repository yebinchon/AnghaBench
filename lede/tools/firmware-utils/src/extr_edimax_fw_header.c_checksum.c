
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char checksum(unsigned char *p, unsigned len)
{
 unsigned char csum = 0;

 while (len--)
  csum += *p++;

 csum ^= 0xb9;

 return csum;
}
