
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hix5hd2_clk_complex {int ctrl_clk_mask; int ctrl_rst_mask; int phy_clk_mask; int phy_rst_mask; int phy_reg; int ctrl_reg; } ;
struct clk_hw {int dummy; } ;


 int mdelay (int) ;
 int readl_relaxed (int ) ;
 struct hix5hd2_clk_complex* to_complex_clk (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int clk_ether_prepare(struct clk_hw *hw)
{
 struct hix5hd2_clk_complex *clk = to_complex_clk(hw);
 u32 val;

 val = readl_relaxed(clk->ctrl_reg);
 val |= clk->ctrl_clk_mask | clk->ctrl_rst_mask;
 writel_relaxed(val, clk->ctrl_reg);
 val &= ~(clk->ctrl_rst_mask);
 writel_relaxed(val, clk->ctrl_reg);

 val = readl_relaxed(clk->phy_reg);
 val |= clk->phy_clk_mask;
 val &= ~(clk->phy_rst_mask);
 writel_relaxed(val, clk->phy_reg);
 mdelay(10);

 val &= ~(clk->phy_clk_mask);
 val |= clk->phy_rst_mask;
 writel_relaxed(val, clk->phy_reg);
 mdelay(10);

 val |= clk->phy_clk_mask;
 val &= ~(clk->phy_rst_mask);
 writel_relaxed(val, clk->phy_reg);
 mdelay(30);
 return 0;
}
