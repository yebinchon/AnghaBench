
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EBUSY ;
 int TS5500_ADC_CONV_BUSY ;
 int TS5500_ADC_CONV_BUSY_ADDR ;
 int TS5500_ADC_CONV_DELAY ;
 int TS5500_ADC_CONV_INIT_LSB_ADDR ;
 int TS5500_ADC_CONV_MSB_ADDR ;
 int inb (int ) ;
 int outb (int,int ) ;
 int udelay (int ) ;

__attribute__((used)) static int ts5500_adc_convert(u8 ctrl)
{
 u8 lsb, msb;


 outb(ctrl & 0x1f, TS5500_ADC_CONV_INIT_LSB_ADDR);






 udelay(TS5500_ADC_CONV_DELAY);
 if (inb(TS5500_ADC_CONV_BUSY_ADDR) & TS5500_ADC_CONV_BUSY)
  return -EBUSY;


 lsb = inb(TS5500_ADC_CONV_INIT_LSB_ADDR);
 msb = inb(TS5500_ADC_CONV_MSB_ADDR);

 return (msb << 8) | lsb;
}
