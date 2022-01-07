
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ CLKCTRL_IDLEST_DISABLED ;
 scalar_t__ _omap4_idlest (scalar_t__) ;

__attribute__((used)) static bool _omap4_is_idle(u32 val)
{
 val = _omap4_idlest(val);

 return val == CLKCTRL_IDLEST_DISABLED;
}
