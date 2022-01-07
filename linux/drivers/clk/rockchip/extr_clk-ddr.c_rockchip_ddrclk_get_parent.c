
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rockchip_ddrclk {int mux_shift; scalar_t__ mux_width; scalar_t__ mux_offset; scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;


 int GENMASK (scalar_t__,int ) ;
 int readl (scalar_t__) ;
 struct rockchip_ddrclk* to_rockchip_ddrclk_hw (struct clk_hw*) ;

__attribute__((used)) static u8 rockchip_ddrclk_get_parent(struct clk_hw *hw)
{
 struct rockchip_ddrclk *ddrclk = to_rockchip_ddrclk_hw(hw);
 u32 val;

 val = readl(ddrclk->reg_base +
   ddrclk->mux_offset) >> ddrclk->mux_shift;
 val &= GENMASK(ddrclk->mux_width - 1, 0);

 return val;
}
