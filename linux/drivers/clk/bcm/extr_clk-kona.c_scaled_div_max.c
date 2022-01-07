
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int width; } ;
struct TYPE_4__ {TYPE_1__ s; int fixed; } ;
struct bcm_clk_div {TYPE_2__ u; } ;


 scalar_t__ divider_is_fixed (struct bcm_clk_div*) ;
 int scaled_div_value (struct bcm_clk_div*,int) ;

u64 scaled_div_max(struct bcm_clk_div *div)
{
 u32 reg_div;

 if (divider_is_fixed(div))
  return (u64)div->u.fixed;

 reg_div = ((u32)1 << div->u.s.width) - 1;

 return scaled_div_value(div, reg_div);
}
