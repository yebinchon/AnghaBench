
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_utmi {int regmap_pmc; } ;
struct clk_hw {int dummy; } ;


 int clk_utmi_ready (int ) ;
 struct clk_utmi* to_clk_utmi (struct clk_hw*) ;

__attribute__((used)) static int clk_utmi_is_prepared(struct clk_hw *hw)
{
 struct clk_utmi *utmi = to_clk_utmi(hw);

 return clk_utmi_ready(utmi->regmap_pmc);
}
