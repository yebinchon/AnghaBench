
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int AM33XX_IDLEST_MASK ;
 int AM33XX_IDLEST_SHIFT ;
 int am33xx_cm_read_reg (int ,int ) ;

__attribute__((used)) static u32 _clkctrl_idlest(u16 inst, u16 clkctrl_offs)
{
 u32 v = am33xx_cm_read_reg(inst, clkctrl_offs);
 v &= AM33XX_IDLEST_MASK;
 v >>= AM33XX_IDLEST_SHIFT;
 return v;
}
