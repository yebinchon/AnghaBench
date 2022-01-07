
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int dpll_bypass_vals; } ;


 int __ffs (int) ;
 TYPE_1__* ti_clk_get_features () ;

__attribute__((used)) static int _omap2_dpll_is_in_bypass(u32 v)
{
 u8 mask, val;

 mask = ti_clk_get_features()->dpll_bypass_vals;






 while (mask) {
  val = __ffs(mask);
  mask ^= (1 << val);
  if (v == val)
   return 1;
 }

 return 0;
}
