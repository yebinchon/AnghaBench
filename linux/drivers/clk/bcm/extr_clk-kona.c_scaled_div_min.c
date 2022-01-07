
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int fixed; } ;
struct bcm_clk_div {TYPE_1__ u; } ;


 scalar_t__ divider_is_fixed (struct bcm_clk_div*) ;
 int scaled_div_value (struct bcm_clk_div*,int ) ;

__attribute__((used)) static inline u64
scaled_div_min(struct bcm_clk_div *div)
{
 if (divider_is_fixed(div))
  return (u64)div->u.fixed;

 return scaled_div_value(div, 0);
}
