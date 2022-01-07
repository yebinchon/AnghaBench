
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;



 unsigned char CLK_16_384MHz ;



 unsigned char CLK_8kHz ;
 int SET_PORT_BITS (int ,int,unsigned char) ;
 int TLCLK_REG0 ;
 int TLCLK_REG1 ;
 int TLCLK_REG3 ;
 int dev_dbg (struct device*,char*,unsigned long) ;
 int event_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscanf (char const*,char*,unsigned long*) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t store_select_amcb1_transmit_clock(struct device *d,
   struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned long tmp;
 unsigned char val;
 unsigned long flags;

 sscanf(buf, "%lX", &tmp);
 dev_dbg(d, "tmp = 0x%lX\n", tmp);

 val = (unsigned char)tmp;
 spin_lock_irqsave(&event_lock, flags);
 if ((val == CLK_8kHz) || (val == CLK_16_384MHz)) {
  SET_PORT_BITS(TLCLK_REG3, 0xf8, 0x5);
  SET_PORT_BITS(TLCLK_REG1, 0xfb, ~val);
 } else if (val >= 128) {
  SET_PORT_BITS(TLCLK_REG3, 0xf8, 0x7);
  switch (val) {
  case 128:
   SET_PORT_BITS(TLCLK_REG0, 0xfc, 2);
   break;
  case 131:
   SET_PORT_BITS(TLCLK_REG0, 0xfc, 0);
   break;
  case 130:
   SET_PORT_BITS(TLCLK_REG0, 0xfc, 3);
   break;
  case 129:
   SET_PORT_BITS(TLCLK_REG0, 0xfc, 1);
   break;
  }
 } else {
  SET_PORT_BITS(TLCLK_REG3, 0xf8, val);
 }
 spin_unlock_irqrestore(&event_lock, flags);

 return strnlen(buf, count);
}
