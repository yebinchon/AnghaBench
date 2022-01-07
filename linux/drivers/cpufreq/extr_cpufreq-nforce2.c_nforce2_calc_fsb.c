
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char NFORCE2_XTAL ;

__attribute__((used)) static int nforce2_calc_fsb(int pll)
{
 unsigned char mul, div;

 mul = (pll >> 8) & 0xff;
 div = pll & 0xff;

 if (div > 0)
  return NFORCE2_XTAL * mul / div;

 return 0;
}
