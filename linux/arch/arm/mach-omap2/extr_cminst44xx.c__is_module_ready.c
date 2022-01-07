
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;


 scalar_t__ CLKCTRL_IDLEST_FUNCTIONAL ;
 scalar_t__ CLKCTRL_IDLEST_INTERFACE_IDLE ;
 scalar_t__ _clkctrl_idlest (int ,int ,int ) ;

__attribute__((used)) static bool _is_module_ready(u8 part, u16 inst, u16 clkctrl_offs)
{
 u32 v;

 v = _clkctrl_idlest(part, inst, clkctrl_offs);

 return (v == CLKCTRL_IDLEST_FUNCTIONAL ||
  v == CLKCTRL_IDLEST_INTERFACE_IDLE) ? 1 : 0;
}
