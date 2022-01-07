
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct clk_omap_reg {int offset; } ;
struct clk_hw_omap {int enable_bit; int enable_reg; } ;
struct TYPE_2__ {int cm_idlest_val; } ;


 int memcpy (struct clk_omap_reg*,int *,int) ;
 TYPE_1__* ti_clk_get_features () ;

void omap2_clk_dflt_find_idlest(struct clk_hw_omap *clk,
    struct clk_omap_reg *idlest_reg, u8 *idlest_bit,
    u8 *idlest_val)
{
 memcpy(idlest_reg, &clk->enable_reg, sizeof(*idlest_reg));

 idlest_reg->offset &= ~0xf0;
 idlest_reg->offset |= 0x20;

 *idlest_bit = clk->enable_bit;






 *idlest_val = ti_clk_get_features()->cm_idlest_val;
}
