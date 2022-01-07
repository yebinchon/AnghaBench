
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PIC32_CFGCON2 ;
 int pic32_conf_modify_atomic (int ,int,int) ;

int pic32_set_sdhci_adma_fifo_threshold(u32 rthrsh, u32 wthrsh)
{
 u32 clr, set;

 clr = (0x3ff << 4) | (0x3ff << 16);
 set = (rthrsh << 4) | (wthrsh << 16);
 return pic32_conf_modify_atomic(PIC32_CFGCON2, clr, set);
}
