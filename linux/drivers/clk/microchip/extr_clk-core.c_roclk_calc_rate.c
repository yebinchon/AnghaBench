
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int,int) ;

__attribute__((used)) static unsigned long roclk_calc_rate(unsigned long parent_rate,
         u32 rodiv, u32 rotrim)
{
 u64 rate64;






 if (rotrim) {
  rodiv = (rodiv << 9) + rotrim;
  rate64 = parent_rate;
  rate64 <<= 8;
  do_div(rate64, rodiv);
 } else if (rodiv) {
  rate64 = parent_rate / (rodiv << 1);
 } else {
  rate64 = parent_rate;
 }
 return rate64;
}
