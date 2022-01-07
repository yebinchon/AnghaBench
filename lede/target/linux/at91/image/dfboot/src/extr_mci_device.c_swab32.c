
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int swab32(unsigned int data)
{
 unsigned int res = 0;

 res = (data & 0x000000ff) << 24 |
    (data & 0x0000ff00) << 8 |
    (data & 0x00ff0000) >> 8 |
    (data & 0xff000000) >> 24;

 return res;
}
