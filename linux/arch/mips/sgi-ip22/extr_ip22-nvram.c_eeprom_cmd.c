
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_IN_COMMAND ;
 int EEPROM_DATO ;
 int EEPROM_ECLK ;
 int __raw_readl (unsigned int*) ;
 int __raw_writel (int,unsigned int*) ;
 int delay () ;

__attribute__((used)) static inline void eeprom_cmd(unsigned int *ctrl, unsigned cmd, unsigned reg)
{
 unsigned short ser_cmd;
 int i;

 ser_cmd = cmd | (reg << (16 - BITS_IN_COMMAND));
 for (i = 0; i < BITS_IN_COMMAND; i++) {
  if (ser_cmd & (1<<15))
   __raw_writel(__raw_readl(ctrl) | EEPROM_DATO, ctrl);
  else
   __raw_writel(__raw_readl(ctrl) & ~EEPROM_DATO, ctrl);
  __raw_writel(__raw_readl(ctrl) & ~EEPROM_ECLK, ctrl);
  delay();
  __raw_writel(__raw_readl(ctrl) | EEPROM_ECLK, ctrl);
  delay();
  ser_cmd <<= 1;
 }

 __raw_writel(__raw_readl(ctrl) & ~EEPROM_DATO, ctrl);
}
