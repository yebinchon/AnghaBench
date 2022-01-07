
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TLCLK_REG1 ;
 int event_lock ;
 int inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t show_current_ref(struct device *d,
  struct device_attribute *attr, char *buf)
{
 unsigned long ret_val;
 unsigned long flags;

 spin_lock_irqsave(&event_lock, flags);
 ret_val = ((inb(TLCLK_REG1) & 0x08) >> 3);
 spin_unlock_irqrestore(&event_lock, flags);

 return sprintf(buf, "0x%lX\n", ret_val);
}
