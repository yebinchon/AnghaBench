
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_omap_reg {int offset; } ;
struct clk_hw_omap {int enable_bit; int enable_reg; } ;


 int CM_IDLEST ;
 int OMAP24XX_CM_FCLKEN2 ;
 int OMAP24XX_CM_IDLEST_VAL ;
 int memcpy (struct clk_omap_reg*,int *,int) ;

__attribute__((used)) static void omap2430_clk_i2chs_find_idlest(struct clk_hw_omap *clk,
        struct clk_omap_reg *idlest_reg,
        u8 *idlest_bit,
        u8 *idlest_val)
{
 memcpy(idlest_reg, &clk->enable_reg, sizeof(*idlest_reg));
 idlest_reg->offset ^= (OMAP24XX_CM_FCLKEN2 ^ CM_IDLEST);
 *idlest_bit = clk->enable_bit;
 *idlest_val = OMAP24XX_CM_IDLEST_VAL;
}
