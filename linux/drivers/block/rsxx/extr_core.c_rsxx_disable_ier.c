
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {scalar_t__ regmap; int ier_mask; int eeh_state; } ;


 scalar_t__ IER ;
 int __disable_intr (int *,unsigned int) ;
 int iowrite32 (int ,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

void rsxx_disable_ier(struct rsxx_cardinfo *card, unsigned int intr)
{
 if (unlikely(card->eeh_state))
  return;

 __disable_intr(&card->ier_mask, intr);
 iowrite32(card->ier_mask, card->regmap + IER);
}
