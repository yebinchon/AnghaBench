
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vexpress_osc {int reg; } ;
struct clk_hw {int dummy; } ;


 int regmap_write (int ,int ,unsigned long) ;
 struct vexpress_osc* to_vexpress_osc (struct clk_hw*) ;

__attribute__((used)) static int vexpress_osc_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct vexpress_osc *osc = to_vexpress_osc(hw);

 return regmap_write(osc->reg, 0, rate);
}
