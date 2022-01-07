
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {unsigned int state; int size8; int gendisk; scalar_t__ config_valid; } ;
 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int dev_crit (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ) ;
 int rsxx_card_state_to_str (unsigned int) ;
 int rsxx_get_card_size8 (struct rsxx_cardinfo*,int*) ;
 int set_capacity (int ,int) ;

__attribute__((used)) static void card_state_change(struct rsxx_cardinfo *card,
         unsigned int new_state)
{
 int st;

 dev_info(CARD_TO_DEV(card),
  "card state change detected.(%s -> %s)\n",
  rsxx_card_state_to_str(card->state),
  rsxx_card_state_to_str(new_state));

 card->state = new_state;


 if (!card->config_valid)
  return;

 switch (new_state) {
 case 132:
  dev_crit(CARD_TO_DEV(card),
   "Hardware has entered read-only mode!\n");





 case 133:
  st = rsxx_get_card_size8(card, &card->size8);
  if (st)
   dev_err(CARD_TO_DEV(card),
    "Failed attaching DMA devices\n");

  if (card->config_valid)
   set_capacity(card->gendisk, card->size8 >> 9);
  break;

 case 135:
  dev_crit(CARD_TO_DEV(card),
   "Hardware Fault reported!\n");



 case 131:
 case 129:
 case 134:
 case 128:
 case 130:




 case 136:
  set_capacity(card->gendisk, 0);
  break;
 }
}
