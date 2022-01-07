
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hix5hd2_clk_complex {int ctrl_reg; int ctrl_clk_mask; } ;
struct clk_hw {int dummy; } ;


 int readl_relaxed (int ) ;
 struct hix5hd2_clk_complex* to_complex_clk (struct clk_hw*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void clk_ether_unprepare(struct clk_hw *hw)
{
 struct hix5hd2_clk_complex *clk = to_complex_clk(hw);
 u32 val;

 val = readl_relaxed(clk->ctrl_reg);
 val &= ~(clk->ctrl_clk_mask);
 writel_relaxed(val, clk->ctrl_reg);
}
