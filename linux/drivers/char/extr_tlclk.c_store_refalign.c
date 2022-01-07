
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SET_PORT_BITS (int ,int,int) ;
 int TLCLK_REG0 ;
 int dev_dbg (struct device*,char*,unsigned long) ;
 int event_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscanf (char const*,char*,unsigned long*) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t store_refalign (struct device *d,
   struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned long tmp;
 unsigned long flags;

 sscanf(buf, "%lX", &tmp);
 dev_dbg(d, "tmp = 0x%lX\n", tmp);
 spin_lock_irqsave(&event_lock, flags);
 SET_PORT_BITS(TLCLK_REG0, 0xf7, 0);
 SET_PORT_BITS(TLCLK_REG0, 0xf7, 0x08);
 SET_PORT_BITS(TLCLK_REG0, 0xf7, 0);
 spin_unlock_irqrestore(&event_lock, flags);

 return strnlen(buf, count);
}
