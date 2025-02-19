
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct clk_hw {int clk; } ;
struct clk {int dummy; } ;
struct TYPE_9__ {struct clk* clk; } ;
struct TYPE_12__ {TYPE_3__ hw; } ;
struct TYPE_8__ {struct clk* clk; } ;
struct TYPE_11__ {TYPE_2__ hw; } ;
struct TYPE_7__ {struct clk* clk; } ;
struct TYPE_10__ {TYPE_1__ hw; } ;


 int BUG_ON (int) ;
 struct clk* clk_get_parent (int ) ;
 unsigned long clk_get_rate (struct clk*) ;
 TYPE_6__ clk_pll1 ;
 TYPE_5__ clk_pll2 ;
 TYPE_4__ clk_pll3 ;
 int clk_set_parent (int ,struct clk*) ;
 int clk_set_rate (struct clk*,unsigned long) ;

__attribute__((used)) static int cpu_clk_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 int ret1, ret2;
 struct clk *cur_parent;

 if (rate == clk_get_rate(clk_pll1.hw.clk)) {
  ret1 = clk_set_parent(hw->clk, clk_pll1.hw.clk);
  return ret1;
 }

 if (rate == clk_get_rate(clk_pll2.hw.clk)) {
  ret1 = clk_set_parent(hw->clk, clk_pll2.hw.clk);
  return ret1;
 }

 if (rate == clk_get_rate(clk_pll3.hw.clk)) {
  ret1 = clk_set_parent(hw->clk, clk_pll3.hw.clk);
  return ret1;
 }

 cur_parent = clk_get_parent(hw->clk);


 if (cur_parent == clk_pll1.hw.clk) {
  ret1 = clk_set_parent(hw->clk, clk_pll2.hw.clk);
  BUG_ON(ret1);
 }

 ret2 = clk_set_rate(clk_pll1.hw.clk, rate);

 ret1 = clk_set_parent(hw->clk, clk_pll1.hw.clk);

 return ret2 ? ret2 : ret1;
}
