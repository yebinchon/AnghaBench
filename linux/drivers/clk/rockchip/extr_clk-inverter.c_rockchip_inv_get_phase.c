
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_inv_clock {int shift; int reg; } ;
struct clk_hw {int dummy; } ;


 int INVERTER_MASK ;
 int readl (int ) ;
 struct rockchip_inv_clock* to_inv_clock (struct clk_hw*) ;

__attribute__((used)) static int rockchip_inv_get_phase(struct clk_hw *hw)
{
 struct rockchip_inv_clock *inv_clock = to_inv_clock(hw);
 u32 val;

 val = readl(inv_clock->reg) >> inv_clock->shift;
 val &= INVERTER_MASK;
 return val ? 180 : 0;
}
