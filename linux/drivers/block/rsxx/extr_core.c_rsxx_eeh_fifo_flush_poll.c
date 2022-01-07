
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {scalar_t__ regmap; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 scalar_t__ PCI_RECONFIG ;
 unsigned int RSXX_FLUSH_BUSY ;
 unsigned int RSXX_FLUSH_TIMEOUT ;
 int dev_warn (int ,char*) ;
 unsigned int ioread32 (scalar_t__) ;
 int ssleep (int) ;

__attribute__((used)) static int rsxx_eeh_fifo_flush_poll(struct rsxx_cardinfo *card)
{
 unsigned int status;
 int iter = 0;


 while (iter++ < 10) {
  status = ioread32(card->regmap + PCI_RECONFIG);

  if (status & RSXX_FLUSH_BUSY) {
   ssleep(1);
   continue;
  }

  if (status & RSXX_FLUSH_TIMEOUT)
   dev_warn(CARD_TO_DEV(card), "HW: flash controller timeout\n");
  return 0;
 }


 return -1;
}
