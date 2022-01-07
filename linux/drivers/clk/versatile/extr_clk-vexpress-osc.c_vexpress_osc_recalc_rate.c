
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct vexpress_osc {int reg; } ;
struct clk_hw {int dummy; } ;


 int regmap_read (int ,int ,unsigned long*) ;
 struct vexpress_osc* to_vexpress_osc (struct clk_hw*) ;

__attribute__((used)) static unsigned long vexpress_osc_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct vexpress_osc *osc = to_vexpress_osc(hw);
 u32 rate;

 regmap_read(osc->reg, 0, &rate);

 return rate;
}
