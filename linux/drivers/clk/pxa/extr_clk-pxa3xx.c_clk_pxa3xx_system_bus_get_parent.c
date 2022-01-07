
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int PXA_BUS_60Mhz ;
 int PXA_BUS_HSS ;
 scalar_t__ pxa3xx_is_ring_osc_forced () ;

__attribute__((used)) static u8 clk_pxa3xx_system_bus_get_parent(struct clk_hw *hw)
{
 if (pxa3xx_is_ring_osc_forced())
  return PXA_BUS_60Mhz;
 else
  return PXA_BUS_HSS;
}
