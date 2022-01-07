
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void encode(unsigned long data, unsigned long *dest)
{
 unsigned long data2;

 data &= 0x55555555;
 data2 = data ^ 0x55555555;
 data |= ((data2 >> 1) | 0x80000000) & (data2 << 1);

 if (*(dest - 1) & 0x00000001)
  data &= 0x7FFFFFFF;

 *dest = data;
}
