
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int PIC32_CFGCON2 ;
 int pic32_conf_modify_atomic (int ,int ,int ) ;

int pic32_set_lcd_mode(int mode)
{
 u32 mask = mode ? BIT(30) : 0;

 return pic32_conf_modify_atomic(PIC32_CFGCON2, BIT(30), mask);
}
