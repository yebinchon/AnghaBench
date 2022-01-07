
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int PIC32_CFGCON2 ;
 int pic32_conf_modify_atomic (int ,int ,int ) ;

int pic32_disable_lcd(void)
{
 return pic32_conf_modify_atomic(PIC32_CFGCON2, BIT(31), 0);
}
