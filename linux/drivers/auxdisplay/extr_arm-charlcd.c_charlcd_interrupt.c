
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct charlcd {int dev; int complete; scalar_t__ virtbase; } ;
typedef int irqreturn_t ;


 scalar_t__ CHAR_RAW ;
 int CHAR_RAW_CLEAR ;
 scalar_t__ CHAR_STAT ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_info (int ,char*,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t charlcd_interrupt(int irq, void *data)
{
 struct charlcd *lcd = data;
 u8 status;

 status = readl(lcd->virtbase + CHAR_STAT) & 0x01;

 writel(CHAR_RAW_CLEAR, lcd->virtbase + CHAR_RAW);
 if (status)
  complete(&lcd->complete);
 else
  dev_info(lcd->dev, "Spurious IRQ (%02x)\n", status);
 return IRQ_HANDLED;
}
