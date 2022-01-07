
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_omap_reg {int offset; } ;
struct clk_hw_omap {int enable_reg; } ;


 int AM35XX_ST_IPSS_SHIFT ;
 int OMAP34XX_CM_IDLEST_VAL ;
 int memcpy (struct clk_omap_reg*,int *,int) ;

__attribute__((used)) static void am35xx_clk_ipss_find_idlest(struct clk_hw_omap *clk,
     struct clk_omap_reg *idlest_reg,
     u8 *idlest_bit,
     u8 *idlest_val)
{
 memcpy(idlest_reg, &clk->enable_reg, sizeof(*idlest_reg));

 idlest_reg->offset &= ~0xf0;
 idlest_reg->offset |= 0x20;
 *idlest_bit = AM35XX_ST_IPSS_SHIFT;
 *idlest_val = OMAP34XX_CM_IDLEST_VAL;
}
