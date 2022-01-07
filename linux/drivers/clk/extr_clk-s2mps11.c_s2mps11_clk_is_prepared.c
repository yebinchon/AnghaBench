
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct s2mps11_clk {int mask; int reg; TYPE_1__* iodev; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap_pmic; } ;


 int EINVAL ;
 int regmap_read (int ,int ,int*) ;
 struct s2mps11_clk* to_s2mps11_clk (struct clk_hw*) ;

__attribute__((used)) static int s2mps11_clk_is_prepared(struct clk_hw *hw)
{
 int ret;
 u32 val;
 struct s2mps11_clk *s2mps11 = to_s2mps11_clk(hw);

 ret = regmap_read(s2mps11->iodev->regmap_pmic,
    s2mps11->reg, &val);
 if (ret < 0)
  return -EINVAL;

 return val & s2mps11->mask;
}
