
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int size8; int bdev_attached; int dev_lock; int gendisk; scalar_t__ config_valid; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int device_add_disk (int ,int ,int *) ;
 scalar_t__ enable_blkdev ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_capacity (int ,int) ;

int rsxx_attach_dev(struct rsxx_cardinfo *card)
{
 mutex_lock(&card->dev_lock);


 if (enable_blkdev) {
  if (card->config_valid)
   set_capacity(card->gendisk, card->size8 >> 9);
  else
   set_capacity(card->gendisk, 0);
  device_add_disk(CARD_TO_DEV(card), card->gendisk, ((void*)0));
  card->bdev_attached = 1;
 }

 mutex_unlock(&card->dev_lock);

 return 0;
}
