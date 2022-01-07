
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2mps11_clk {int mask; int reg; TYPE_1__* iodev; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap_pmic; } ;


 int regmap_update_bits (int ,int ,int ,int ) ;
 struct s2mps11_clk* to_s2mps11_clk (struct clk_hw*) ;

__attribute__((used)) static void s2mps11_clk_unprepare(struct clk_hw *hw)
{
 struct s2mps11_clk *s2mps11 = to_s2mps11_clk(hw);

 regmap_update_bits(s2mps11->iodev->regmap_pmic, s2mps11->reg,
      s2mps11->mask, ~s2mps11->mask);
}
