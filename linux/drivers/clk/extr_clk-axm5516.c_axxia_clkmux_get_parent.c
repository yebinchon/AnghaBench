
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct axxia_clkmux {int shift; int width; int reg; } ;
struct axxia_clk {int regmap; } ;


 int regmap_read (int ,int ,int*) ;
 struct axxia_clk* to_axxia_clk (struct clk_hw*) ;
 struct axxia_clkmux* to_axxia_clkmux (struct axxia_clk*) ;

__attribute__((used)) static u8 axxia_clkmux_get_parent(struct clk_hw *hw)
{
 struct axxia_clk *aclk = to_axxia_clk(hw);
 struct axxia_clkmux *mux = to_axxia_clkmux(aclk);
 u32 ctrl, parent;

 regmap_read(aclk->regmap, mux->reg, &ctrl);
 parent = (ctrl >> mux->shift) & ((1 << mux->width) - 1);

 return (u8) parent;
}
