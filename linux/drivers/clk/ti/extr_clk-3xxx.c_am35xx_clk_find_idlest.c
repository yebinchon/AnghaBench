
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk_omap_reg {int dummy; } ;
struct clk_hw_omap {scalar_t__ enable_bit; int enable_reg; } ;


 scalar_t__ AM35XX_IPSS_CLK_IDLEST_VAL ;
 scalar_t__ AM35XX_IPSS_ICK_EN_ACK_OFFSET ;
 int memcpy (struct clk_omap_reg*,int *,int) ;

__attribute__((used)) static void am35xx_clk_find_idlest(struct clk_hw_omap *clk,
       struct clk_omap_reg *idlest_reg,
       u8 *idlest_bit,
       u8 *idlest_val)
{
 memcpy(idlest_reg, &clk->enable_reg, sizeof(*idlest_reg));
 *idlest_bit = clk->enable_bit + AM35XX_IPSS_ICK_EN_ACK_OFFSET;
 *idlest_val = AM35XX_IPSS_CLK_IDLEST_VAL;
}
