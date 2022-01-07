
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct idt77252_dev {int flags; int tqueue; int * irqstat; int name; TYPE_2__* atmdev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* phy; } ;
struct TYPE_3__ {int (* interrupt ) (TYPE_2__*) ;} ;


 int IDT77252_BIT_INTERRUPT ;
 int INTPRINTK (char*,int ,...) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SAR_CFG_FBIE ;
 int SAR_REG_CFG ;
 int SAR_REG_STAT ;
 int SAR_STAT_EPDU ;
 int SAR_STAT_FBQ0A ;
 int SAR_STAT_FBQ1A ;
 int SAR_STAT_FBQ2A ;
 int SAR_STAT_FBQ3A ;
 int SAR_STAT_PHYI ;
 int SAR_STAT_RAWCF ;
 int SAR_STAT_RSQAF ;
 int SAR_STAT_RSQF ;
 int SAR_STAT_TMROF ;
 int SAR_STAT_TSIF ;
 int SAR_STAT_TSQF ;
 int SAR_STAT_TXICP ;
 int clear_bit (int ,int *) ;
 int idt77252_collect_stat (struct idt77252_dev*) ;
 int idt77252_rx (struct idt77252_dev*) ;
 int idt77252_rx_raw (struct idt77252_dev*) ;
 int idt77252_tx (struct idt77252_dev*) ;
 int idt77252_tx_dump (struct idt77252_dev*) ;
 int printk (char*,int ) ;
 int readl (int ) ;
 int schedule_work (int *) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t
idt77252_interrupt(int irq, void *dev_id)
{
 struct idt77252_dev *card = dev_id;
 u32 stat;

 stat = readl(SAR_REG_STAT) & 0xffff;
 if (!stat)
  return IRQ_NONE;

 if (test_and_set_bit(IDT77252_BIT_INTERRUPT, &card->flags)) {
  printk("%s: Re-entering irq_handler()\n", card->name);
  goto out;
 }

 writel(stat, SAR_REG_STAT);

 if (stat & SAR_STAT_TSIF) {
  INTPRINTK("%s: TSIF\n", card->name);
  card->irqstat[15]++;
  idt77252_tx(card);
 }
 if (stat & SAR_STAT_TXICP) {
  INTPRINTK("%s: TXICP\n", card->name);
  card->irqstat[14]++;



 }
 if (stat & SAR_STAT_TSQF) {
  INTPRINTK("%s: TSQF\n", card->name);
  card->irqstat[12]++;
  idt77252_tx(card);
 }
 if (stat & SAR_STAT_TMROF) {
  INTPRINTK("%s: TMROF\n", card->name);
  card->irqstat[11]++;
  idt77252_collect_stat(card);
 }

 if (stat & SAR_STAT_EPDU) {
  INTPRINTK("%s: EPDU\n", card->name);
  card->irqstat[5]++;
  idt77252_rx(card);
 }
 if (stat & SAR_STAT_RSQAF) {
  INTPRINTK("%s: RSQAF\n", card->name);
  card->irqstat[1]++;
  idt77252_rx(card);
 }
 if (stat & SAR_STAT_RSQF) {
  INTPRINTK("%s: RSQF\n", card->name);
  card->irqstat[6]++;
  idt77252_rx(card);
 }
 if (stat & SAR_STAT_RAWCF) {
  INTPRINTK("%s: RAWCF\n", card->name);
  card->irqstat[4]++;
  idt77252_rx_raw(card);
 }

 if (stat & SAR_STAT_PHYI) {
  INTPRINTK("%s: PHYI", card->name);
  card->irqstat[10]++;
  if (card->atmdev->phy && card->atmdev->phy->interrupt)
   card->atmdev->phy->interrupt(card->atmdev);
 }

 if (stat & (SAR_STAT_FBQ0A | SAR_STAT_FBQ1A |
      SAR_STAT_FBQ2A | SAR_STAT_FBQ3A)) {

  writel(readl(SAR_REG_CFG) & ~(SAR_CFG_FBIE), SAR_REG_CFG);

  INTPRINTK("%s: FBQA: %04x\n", card->name, stat);

  if (stat & SAR_STAT_FBQ0A)
   card->irqstat[2]++;
  if (stat & SAR_STAT_FBQ1A)
   card->irqstat[3]++;
  if (stat & SAR_STAT_FBQ2A)
   card->irqstat[7]++;
  if (stat & SAR_STAT_FBQ3A)
   card->irqstat[8]++;

  schedule_work(&card->tqueue);
 }

out:
 clear_bit(IDT77252_BIT_INTERRUPT, &card->flags);
 return IRQ_HANDLED;
}
