
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct atlas7_reset_desc {int clk_bit; int rst_bit; int lock; scalar_t__ rst_ofs; scalar_t__ clk_ofs; } ;


 struct atlas7_reset_desc* atlas7_reset_unit ;
 int clkc_readl (scalar_t__) ;
 int clkc_writel (int,scalar_t__) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int atlas7_reset_module(struct reset_controller_dev *rcdev,
     unsigned long reset_idx)
{
 struct atlas7_reset_desc *reset = &atlas7_reset_unit[reset_idx];
 unsigned long flags;
 spin_lock_irqsave(reset->lock, flags);

 if (clkc_readl(reset->clk_ofs + 8) & (1 << reset->clk_bit)) {
  clkc_writel(1 << reset->rst_bit, reset->rst_ofs + 4);
  udelay(2);
  clkc_writel(1 << reset->clk_bit, reset->clk_ofs + 4);
  clkc_writel(1 << reset->rst_bit, reset->rst_ofs);

  clkc_writel(1 << reset->clk_bit, reset->clk_ofs);
 } else {
  clkc_writel(1 << reset->rst_bit, reset->rst_ofs + 4);
  clkc_writel(1 << reset->clk_bit, reset->clk_ofs);
  udelay(2);
  clkc_writel(1 << reset->clk_bit, reset->clk_ofs + 4);
  clkc_writel(1 << reset->rst_bit, reset->rst_ofs);
 }
 spin_unlock_irqrestore(reset->lock, flags);

 return 0;
}
