
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int dev_lock; scalar_t__ bdev_attached; int gendisk; } ;


 int del_gendisk (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void rsxx_detach_dev(struct rsxx_cardinfo *card)
{
 mutex_lock(&card->dev_lock);

 if (card->bdev_attached) {
  del_gendisk(card->gendisk);
  card->bdev_attached = 0;
 }

 mutex_unlock(&card->dev_lock);
}
