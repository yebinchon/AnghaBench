
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char BS_SPI ;

unsigned char ltq_boot_select(void)
{
 return BS_SPI;
}
