
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct clk_dto {int src_offset; } ;


 int clkc_writel (int ,int ) ;
 struct clk_dto* to_dtoclk (struct clk_hw*) ;

__attribute__((used)) static int dto_clk_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_dto *clk = to_dtoclk(hw);

 clkc_writel(index, clk->src_offset);
 return 0;
}
