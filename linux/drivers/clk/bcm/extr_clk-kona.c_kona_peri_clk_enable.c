
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_1__* peri; } ;
struct kona_clk {TYPE_3__ init_data; int ccu; TYPE_2__ u; } ;
struct clk_hw {int dummy; } ;
struct bcm_clk_gate {int dummy; } ;
struct TYPE_4__ {struct bcm_clk_gate gate; } ;


 int clk_gate (int ,int ,struct bcm_clk_gate*,int) ;
 struct kona_clk* to_kona_clk (struct clk_hw*) ;

__attribute__((used)) static int kona_peri_clk_enable(struct clk_hw *hw)
{
 struct kona_clk *bcm_clk = to_kona_clk(hw);
 struct bcm_clk_gate *gate = &bcm_clk->u.peri->gate;

 return clk_gate(bcm_clk->ccu, bcm_clk->init_data.name, gate, 1);
}
