
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char
ipmb_checksum(unsigned char *data, int size)
{
 unsigned char csum = 0;

 for (; size > 0; size--, data++)
  csum += *data;

 return -csum;
}
