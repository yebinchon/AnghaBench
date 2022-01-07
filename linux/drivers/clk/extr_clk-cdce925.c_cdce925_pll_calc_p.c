
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u8 cdce925_pll_calc_p(u16 n, u16 m)
{
 u8 p;
 u16 r = n / m;

 if (r >= 16)
  return 0;
 p = 4;
 while (r > 1) {
  r >>= 1;
  --p;
 }
 return p;
}
