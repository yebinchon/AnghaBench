
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int TEGRA_DIVIDER_INT ;
 int TEGRA_DIVIDER_ROUND_UP ;
 int div_mask (int) ;
 int do_div (int,unsigned long) ;

int div_frac_get(unsigned long rate, unsigned parent_rate, u8 width,
   u8 frac_width, u8 flags)
{
 u64 divider_ux1 = parent_rate;
 int mul;

 if (!rate)
  return 0;

 mul = 1 << frac_width;

 if (!(flags & TEGRA_DIVIDER_INT))
  divider_ux1 *= mul;

 if (flags & TEGRA_DIVIDER_ROUND_UP)
  divider_ux1 += rate - 1;

 do_div(divider_ux1, rate);

 if (flags & TEGRA_DIVIDER_INT)
  divider_ux1 *= mul;

 if (divider_ux1 < mul)
  return 0;

 divider_ux1 -= mul;

 if (divider_ux1 > div_mask(width))
  return div_mask(width);

 return divider_ux1;
}
