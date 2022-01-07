
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; int den; } ;
struct meson_sclk_div_data {int cached_div; int hi; TYPE_1__ cached_duty; } ;
struct clk_regmap {int map; } ;


 unsigned int DIV_ROUND_CLOSEST (int,int ) ;
 int meson_parm_write (int ,int *,unsigned int) ;

__attribute__((used)) static void sclk_apply_ratio(struct clk_regmap *clk,
        struct meson_sclk_div_data *sclk)
{
 unsigned int hi = DIV_ROUND_CLOSEST(sclk->cached_div *
         sclk->cached_duty.num,
         sclk->cached_duty.den);

 if (hi)
  hi -= 1;

 meson_parm_write(clk->map, &sclk->hi, hi);
}
