
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_sec_osc {int status_mask; int status_reg; int enable_reg; int enable_mask; } ;
struct clk_hw {int dummy; } ;


 int PIC32_SET (int ) ;
 struct pic32_sec_osc* clkhw_to_sosc (struct clk_hw*) ;
 int pic32_syskey_unlock () ;
 int readl_poll_timeout_atomic (int ,int,int,int,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static int sosc_clk_enable(struct clk_hw *hw)
{
 struct pic32_sec_osc *sosc = clkhw_to_sosc(hw);
 u32 v;


 pic32_syskey_unlock();
 writel(sosc->enable_mask, PIC32_SET(sosc->enable_reg));


 return readl_poll_timeout_atomic(sosc->status_reg, v,
      v & sosc->status_mask, 1, 100);
}
