
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct idt77252_dev {int cmd_lock; } ;


 scalar_t__ SAR_CMD_WRITE_UTILITY ;
 int SAR_REG_CMD ;
 int SAR_REG_DR0 ;
 int printk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waitfor_idle (struct idt77252_dev*) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static void
write_utility(void *dev, unsigned long ubus_addr, u8 value)
{
 struct idt77252_dev *card = dev;
 unsigned long flags;

 if (!card) {
  printk("Error: No such device.\n");
  return;
 }

 spin_lock_irqsave(&card->cmd_lock, flags);
 writel((u32) value, SAR_REG_DR0);
 writel(SAR_CMD_WRITE_UTILITY + ubus_addr, SAR_REG_CMD);
 waitfor_idle(card);
 spin_unlock_irqrestore(&card->cmd_lock, flags);
}
