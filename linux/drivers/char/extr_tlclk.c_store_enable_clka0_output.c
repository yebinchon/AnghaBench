
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SET_PORT_BITS (int ,int,unsigned char) ;
 int TLCLK_REG2 ;
 int dev_dbg (struct device*,char*,unsigned long) ;
 int event_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscanf (char const*,char*,unsigned long*) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t store_enable_clka0_output(struct device *d,
   struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned long flags;
 unsigned long tmp;
 unsigned char val;

 sscanf(buf, "%lX", &tmp);
 dev_dbg(d, "tmp = 0x%lX\n", tmp);

 val = (unsigned char)tmp;
 spin_lock_irqsave(&event_lock, flags);
 SET_PORT_BITS(TLCLK_REG2, 0xfe, val);
 spin_unlock_irqrestore(&event_lock, flags);

 return strnlen(buf, count);
}
