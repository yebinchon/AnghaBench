
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct peri_clk_data {int pre_div; int div; } ;
struct TYPE_2__ {struct peri_clk_data* peri; } ;
struct kona_clk {int ccu; TYPE_1__ u; } ;
struct clk_hw {int dummy; } ;


 unsigned long clk_recalc_rate (int ,int *,int *,unsigned long) ;
 struct kona_clk* to_kona_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long kona_peri_clk_recalc_rate(struct clk_hw *hw,
   unsigned long parent_rate)
{
 struct kona_clk *bcm_clk = to_kona_clk(hw);
 struct peri_clk_data *data = bcm_clk->u.peri;

 return clk_recalc_rate(bcm_clk->ccu, &data->div, &data->pre_div,
    parent_rate);
}
