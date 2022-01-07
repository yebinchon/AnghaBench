
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int DELTA_M_FRAC_DEN ;
 unsigned long DELTA_M_FRAC_NUM ;
 int do_div (unsigned long,int ) ;

__attribute__((used)) static unsigned long si544_max_delta(unsigned long rate)
{
 u64 num = rate;

 num *= DELTA_M_FRAC_NUM;
 do_div(num, DELTA_M_FRAC_DEN);

 return num;
}
