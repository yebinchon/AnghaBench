
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_clock {int pllcr; int sckcr; } ;
struct clk_hw {int dummy; } ;


 int clklock ;
 unsigned char readb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pll_clock* to_pll_clock (struct clk_hw*) ;
 int writeb (unsigned char,int ) ;

__attribute__((used)) static int pll_set_rate(struct clk_hw *hw, unsigned long rate,
   unsigned long parent_rate)
{
 int pll;
 unsigned char val;
 unsigned long flags;
 struct pll_clock *pll_clock = to_pll_clock(hw);

 pll = ((rate / parent_rate) / 2) & 0x03;
 spin_lock_irqsave(&clklock, flags);
 val = readb(pll_clock->sckcr);
 val |= 0x08;
 writeb(val, pll_clock->sckcr);
 val = readb(pll_clock->pllcr);
 val &= ~0x03;
 val |= pll;
 writeb(val, pll_clock->pllcr);
 spin_unlock_irqrestore(&clklock, flags);
 return 0;
}
