
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_periph_regs {int dummy; } ;


 int WARN_ON (int) ;
 int periph_banks ;
 struct tegra_clk_periph_regs const* periph_regs ;

const struct tegra_clk_periph_regs *get_reg_bank(int clkid)
{
 int reg_bank = clkid / 32;

 if (reg_bank < periph_banks)
  return &periph_regs[reg_bank];
 else {
  WARN_ON(1);
  return ((void*)0);
 }
}
