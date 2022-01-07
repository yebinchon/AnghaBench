
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rcg {int freq_tbl; } ;
struct clk_hw {int dummy; } ;


 int __clk_rcg_set_rate (struct clk_rcg*,int ) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_bypass_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);

 return __clk_rcg_set_rate(rcg, rcg->freq_tbl);
}
