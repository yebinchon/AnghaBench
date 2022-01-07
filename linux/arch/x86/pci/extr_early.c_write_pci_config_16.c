
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int outl (int,int) ;
 int outw (int ,int) ;

void write_pci_config_16(u8 bus, u8 slot, u8 func, u8 offset, u16 val)
{
 outl(0x80000000 | (bus<<16) | (slot<<11) | (func<<8) | offset, 0xcf8);
 outw(val, 0xcfc + (offset&2));
}
