
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* peri; } ;
struct kona_clk {int ccu; TYPE_2__ u; } ;
struct clk_hw {int dummy; } ;
struct bcm_clk_gate {int dummy; } ;
struct TYPE_3__ {struct bcm_clk_gate gate; } ;


 scalar_t__ is_clk_gate_enabled (int ,struct bcm_clk_gate*) ;
 struct kona_clk* to_kona_clk (struct clk_hw*) ;

__attribute__((used)) static int kona_peri_clk_is_enabled(struct clk_hw *hw)
{
 struct kona_clk *bcm_clk = to_kona_clk(hw);
 struct bcm_clk_gate *gate = &bcm_clk->u.peri->gate;

 return is_clk_gate_enabled(bcm_clk->ccu, gate) ? 1 : 0;
}
