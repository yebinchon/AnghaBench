
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zatm_dev {int dummy; } ;


 unsigned long ZEPROM_CS ;
 unsigned long ZEPROM_DI ;
 unsigned long ZEPROM_SK ;
 int eprom_set (struct zatm_dev*,unsigned long,unsigned short) ;

__attribute__((used)) static void eprom_put_bits(struct zatm_dev *zatm_dev, unsigned long data,
      int bits, unsigned short cmd)
{
 unsigned long value;
 int i;

 for (i = bits-1; i >= 0; i--) {
  value = ZEPROM_CS | (((data >> i) & 1) ? ZEPROM_DI : 0);
  eprom_set(zatm_dev,value,cmd);
  eprom_set(zatm_dev,value | ZEPROM_SK,cmd);
  eprom_set(zatm_dev,value,cmd);
 }
}
