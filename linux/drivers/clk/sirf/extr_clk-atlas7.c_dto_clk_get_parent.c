
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct clk_dto {int src_offset; } ;


 int clkc_readl (int ) ;
 struct clk_dto* to_dtoclk (struct clk_hw*) ;

__attribute__((used)) static u8 dto_clk_get_parent(struct clk_hw *hw)
{
 struct clk_dto *clk = to_dtoclk(hw);

 return clkc_readl(clk->src_offset);
}
