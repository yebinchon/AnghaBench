
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_sec_osc {int enable_reg; int enable_mask; } ;
struct clk_hw {int dummy; } ;


 int PIC32_CLR (int ) ;
 struct pic32_sec_osc* clkhw_to_sosc (struct clk_hw*) ;
 int pic32_syskey_unlock () ;
 int writel (int ,int ) ;

__attribute__((used)) static void sosc_clk_disable(struct clk_hw *hw)
{
 struct pic32_sec_osc *sosc = clkhw_to_sosc(hw);

 pic32_syskey_unlock();
 writel(sosc->enable_mask, PIC32_CLR(sosc->enable_reg));
}
