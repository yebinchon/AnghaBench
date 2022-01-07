
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_ops {int dummy; } ;




 struct clk_ops const rk808_clkout2_ops ;
 struct clk_ops const rk817_clkout2_ops ;

__attribute__((used)) static const struct clk_ops *rkpmic_get_ops(long variant)
{
 switch (variant) {
 case 129:
 case 128:
  return &rk817_clkout2_ops;






 default:
  return &rk808_clkout2_ops;
 }
}
