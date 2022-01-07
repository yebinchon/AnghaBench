
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_psc_data {scalar_t__ control_base; } ;
struct clk_psc {struct clk_psc_data* psc_data; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ MDSTAT ;
 int MDSTAT_MCKOUT ;
 int readl (scalar_t__) ;
 struct clk_psc* to_clk_psc (struct clk_hw*) ;

__attribute__((used)) static int keystone_clk_is_enabled(struct clk_hw *hw)
{
 struct clk_psc *psc = to_clk_psc(hw);
 struct clk_psc_data *data = psc->psc_data;
 u32 mdstat = readl(data->control_base + MDSTAT);

 return (mdstat & MDSTAT_MCKOUT) ? 1 : 0;
}
