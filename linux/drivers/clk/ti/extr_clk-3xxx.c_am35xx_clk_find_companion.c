
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk_omap_reg {int dummy; } ;
struct clk_hw_omap {int enable_bit; int enable_reg; } ;


 scalar_t__ AM35XX_IPSS_ICK_FCK_OFFSET ;
 int AM35XX_IPSS_ICK_MASK ;
 int memcpy (struct clk_omap_reg*,int *,int) ;

__attribute__((used)) static void am35xx_clk_find_companion(struct clk_hw_omap *clk,
          struct clk_omap_reg *other_reg,
          u8 *other_bit)
{
 memcpy(other_reg, &clk->enable_reg, sizeof(*other_reg));
 if (clk->enable_bit & AM35XX_IPSS_ICK_MASK)
  *other_bit = clk->enable_bit + AM35XX_IPSS_ICK_FCK_OFFSET;
 else
 *other_bit = clk->enable_bit - AM35XX_IPSS_ICK_FCK_OFFSET;
}
