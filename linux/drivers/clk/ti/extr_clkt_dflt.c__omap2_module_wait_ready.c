
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct clk_omap_reg {int dummy; } ;
struct clk_hw_omap {int hw; TYPE_1__* ops; } ;
typedef int s16 ;
struct TYPE_4__ {int (* clk_readl ) (struct clk_omap_reg*) ;int (* cm_split_idlest_reg ) (struct clk_omap_reg*,int *,int*) ;int (* cm_wait_module_ready ) (int ,int ,int,int) ;} ;
struct TYPE_3__ {int (* find_idlest ) (struct clk_hw_omap*,struct clk_omap_reg*,int*,int*) ;int (* find_companion ) (struct clk_hw_omap*,struct clk_omap_reg*,int*) ;} ;


 int _wait_idlest_generic (struct clk_hw_omap*,struct clk_omap_reg*,int,int,int ) ;
 int clk_hw_get_name (int *) ;
 int stub1 (struct clk_hw_omap*,struct clk_omap_reg*,int*) ;
 int stub2 (struct clk_omap_reg*) ;
 int stub3 (struct clk_hw_omap*,struct clk_omap_reg*,int*,int*) ;
 int stub4 (struct clk_omap_reg*,int *,int*) ;
 int stub5 (int ,int ,int,int) ;
 TYPE_2__* ti_clk_ll_ops ;

__attribute__((used)) static void _omap2_module_wait_ready(struct clk_hw_omap *clk)
{
 struct clk_omap_reg companion_reg, idlest_reg;
 u8 other_bit, idlest_bit, idlest_val, idlest_reg_id;
 s16 prcm_mod;
 int r;


 if (clk->ops->find_companion) {
  clk->ops->find_companion(clk, &companion_reg, &other_bit);
  if (!(ti_clk_ll_ops->clk_readl(&companion_reg) &
        (1 << other_bit)))
   return;
 }

 clk->ops->find_idlest(clk, &idlest_reg, &idlest_bit, &idlest_val);
 r = ti_clk_ll_ops->cm_split_idlest_reg(&idlest_reg, &prcm_mod,
            &idlest_reg_id);
 if (r) {

  _wait_idlest_generic(clk, &idlest_reg, (1 << idlest_bit),
         idlest_val, clk_hw_get_name(&clk->hw));
 } else {
  ti_clk_ll_ops->cm_wait_module_ready(0, prcm_mod, idlest_reg_id,
          idlest_bit);
 }
}
