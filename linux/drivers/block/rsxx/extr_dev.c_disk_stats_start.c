
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsxx_cardinfo {TYPE_1__* gendisk; int queue; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int part0; } ;


 int bio_op (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int generic_start_io_acct (int ,int ,int ,int *) ;

__attribute__((used)) static void disk_stats_start(struct rsxx_cardinfo *card, struct bio *bio)
{
 generic_start_io_acct(card->queue, bio_op(bio), bio_sectors(bio),
        &card->gendisk->part0);
}
