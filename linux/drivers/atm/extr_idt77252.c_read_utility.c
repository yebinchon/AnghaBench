
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct idt77252_dev {int cmd_lock; } ;


 scalar_t__ SAR_CMD_READ_UTILITY ;
 int SAR_REG_CMD ;
 int SAR_REG_DR0 ;
 int printk (char*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waitfor_idle (struct idt77252_dev*) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static u8
read_utility(void *dev, unsigned long ubus_addr)
{
 struct idt77252_dev *card = dev;
 unsigned long flags;
 u8 value;

 if (!card) {
  printk("Error: No such device.\n");
  return -1;
 }

 spin_lock_irqsave(&card->cmd_lock, flags);
 writel(SAR_CMD_READ_UTILITY + ubus_addr, SAR_REG_CMD);
 waitfor_idle(card);
 value = readl(SAR_REG_DR0);
 spin_unlock_irqrestore(&card->cmd_lock, flags);
 return value;
}
