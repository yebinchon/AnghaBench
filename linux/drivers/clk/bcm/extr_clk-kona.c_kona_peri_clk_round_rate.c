
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* peri; } ;
struct kona_clk {TYPE_2__ u; int ccu; } ;
struct clk_hw {int dummy; } ;
struct bcm_clk_div {int dummy; } ;
struct TYPE_3__ {int pre_div; struct bcm_clk_div div; } ;


 long clk_hw_get_rate (struct clk_hw*) ;
 int divider_exists (struct bcm_clk_div*) ;
 long round_rate (int ,struct bcm_clk_div*,int *,unsigned long,unsigned long,int *) ;
 struct kona_clk* to_kona_clk (struct clk_hw*) ;

__attribute__((used)) static long kona_peri_clk_round_rate(struct clk_hw *hw, unsigned long rate,
   unsigned long *parent_rate)
{
 struct kona_clk *bcm_clk = to_kona_clk(hw);
 struct bcm_clk_div *div = &bcm_clk->u.peri->div;

 if (!divider_exists(div))
  return clk_hw_get_rate(hw);


 return round_rate(bcm_clk->ccu, div, &bcm_clk->u.peri->pre_div,
    rate ? rate : 1, *parent_rate, ((void*)0));
}
