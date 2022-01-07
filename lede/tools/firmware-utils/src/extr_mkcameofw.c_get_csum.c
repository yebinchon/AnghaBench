
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t get_csum(unsigned char *p, uint32_t len)
{
 uint32_t csum = 0;

 while (len--)
  csum += *p++;

 return csum;
}
