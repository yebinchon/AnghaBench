
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDROM_ALTSTATUS_REG ;
 int __raw_readb (int ) ;

__attribute__((used)) static bool gdrom_is_busy(void)
{
 return (__raw_readb(GDROM_ALTSTATUS_REG) & 0x80) != 0;
}
