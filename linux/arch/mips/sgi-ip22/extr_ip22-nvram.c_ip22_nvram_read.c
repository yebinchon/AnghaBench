
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bbram; int eeprom; } ;


 TYPE_1__* hpc3c0 ;
 unsigned short ip22_eeprom_read (int *,int) ;
 scalar_t__ ip22_is_fullhouse () ;

unsigned short ip22_nvram_read(int reg)
{
 if (ip22_is_fullhouse())


  return ip22_eeprom_read(&hpc3c0->eeprom, reg);
 else {
  unsigned short tmp;

  reg <<= 1;
  tmp = hpc3c0->bbram[reg++] & 0xff;
  return (tmp << 8) | (hpc3c0->bbram[reg] & 0xff);
 }
}
