
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;

__attribute__((used)) static u16 cdce925_calc_divider(unsigned long rate,
  unsigned long parent_rate)
{
 unsigned long divider;

 if (!rate)
  return 0;
 if (rate >= parent_rate)
  return 1;

 divider = DIV_ROUND_CLOSEST(parent_rate, rate);
 if (divider > 0x7F)
  divider = 0x7F;

 return (u16)divider;
}
