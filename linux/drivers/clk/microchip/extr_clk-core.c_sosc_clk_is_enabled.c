
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_sec_osc {int enable_mask; int status_mask; int status_reg; int enable_reg; } ;
struct clk_hw {int dummy; } ;


 struct pic32_sec_osc* clkhw_to_sosc (struct clk_hw*) ;
 int readl (int ) ;

__attribute__((used)) static int sosc_clk_is_enabled(struct clk_hw *hw)
{
 struct pic32_sec_osc *sosc = clkhw_to_sosc(hw);
 u32 enabled, ready;


 enabled = readl(sosc->enable_reg) & sosc->enable_mask;
 ready = readl(sosc->status_reg) & sosc->status_mask;

 return enabled && ready;
}
