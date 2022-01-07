
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int AM33XX_CLKTRCTRL_MASK ;
 int AM33XX_CLKTRCTRL_SHIFT ;
 int am33xx_cm_read_reg (int ,int ) ;
 int am33xx_cm_write_reg (int,int ,int ) ;

__attribute__((used)) static void _clktrctrl_write(u8 c, u16 inst, u16 cdoffs)
{
 u32 v;

 v = am33xx_cm_read_reg(inst, cdoffs);
 v &= ~AM33XX_CLKTRCTRL_MASK;
 v |= c << AM33XX_CLKTRCTRL_SHIFT;
 am33xx_cm_write_reg(v, inst, cdoffs);
}
