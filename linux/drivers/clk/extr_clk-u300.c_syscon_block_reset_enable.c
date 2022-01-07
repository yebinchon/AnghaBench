
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk_syscon {int reset; int res_reg; int res_bit; } ;


 int BIT (int ) ;
 int readw (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int syscon_resetreg_lock ;
 int writew (int ,int ) ;

__attribute__((used)) static void syscon_block_reset_enable(struct clk_syscon *sclk)
{
 unsigned long iflags;
 u16 val;


 if (!sclk->res_reg)
  return;
 spin_lock_irqsave(&syscon_resetreg_lock, iflags);
 val = readw(sclk->res_reg);
 val |= BIT(sclk->res_bit);
 writew(val, sclk->res_reg);
 spin_unlock_irqrestore(&syscon_resetreg_lock, iflags);
 sclk->reset = 1;
}
