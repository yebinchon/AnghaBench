
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long adjust_reg18(unsigned short data)
{
 unsigned long tmp1, tmp2;

 tmp1 = (data<<1 | 0x00000001) & 0x000001FF;
 tmp2 = (data<<2 | 0x00000200) & 0x0003FE00;
 return tmp1 | tmp2;
}
