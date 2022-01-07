
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct rockchip_muxgrf_clock {unsigned int shift; int flags; int reg; int regmap; scalar_t__ width; } ;
struct clk_hw {int dummy; } ;


 int CLK_MUX_HIWORD_MASK ;
 unsigned int GENMASK (scalar_t__,unsigned int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct rockchip_muxgrf_clock* to_muxgrf_clock (struct clk_hw*) ;

__attribute__((used)) static int rockchip_muxgrf_set_parent(struct clk_hw *hw, u8 index)
{
 struct rockchip_muxgrf_clock *mux = to_muxgrf_clock(hw);
 unsigned int mask = GENMASK(mux->width + mux->shift - 1, mux->shift);
 unsigned int val;

 val = index;
 val <<= mux->shift;

 if (mux->flags & CLK_MUX_HIWORD_MASK)
  return regmap_write(mux->regmap, mux->reg, val | (mask << 16));
 else
  return regmap_update_bits(mux->regmap, mux->reg, mask, val);
}
