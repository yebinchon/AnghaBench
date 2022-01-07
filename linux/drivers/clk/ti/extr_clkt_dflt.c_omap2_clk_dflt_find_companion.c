
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_omap_reg {int offset; } ;
struct clk_hw_omap {int enable_bit; int enable_reg; } ;


 int CM_FCLKEN ;
 int CM_ICLKEN ;
 int memcpy (struct clk_omap_reg*,int *,int) ;

void omap2_clk_dflt_find_companion(struct clk_hw_omap *clk,
       struct clk_omap_reg *other_reg,
       u8 *other_bit)
{
 memcpy(other_reg, &clk->enable_reg, sizeof(*other_reg));





 other_reg->offset ^= (CM_FCLKEN ^ CM_ICLKEN);

 *other_bit = clk->enable_bit;
}
