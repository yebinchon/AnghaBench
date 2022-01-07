
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int s16 ;


 scalar_t__ CLKCTRL_IDLEST_DISABLED ;
 int EBUSY ;
 int MAX_MODULE_DISABLE_TIME ;
 scalar_t__ _clkctrl_idlest (int ,int ,int ) ;
 int omap_test_timeout (int,int,int) ;

__attribute__((used)) static int omap4_cminst_wait_module_idle(u8 part, s16 inst, u16 clkctrl_offs,
      u8 bit_shift)
{
 int i = 0;

 omap_test_timeout((_clkctrl_idlest(part, inst, clkctrl_offs) ==
      CLKCTRL_IDLEST_DISABLED),
     MAX_MODULE_DISABLE_TIME, i);

 return (i < MAX_MODULE_DISABLE_TIME) ? 0 : -EBUSY;
}
