
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsxx_cardinfo {TYPE_1__* gendisk; int queue; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int part0; } ;


 int bio_op (struct bio*) ;
 int generic_end_io_acct (int ,int ,int *,unsigned long) ;

__attribute__((used)) static void disk_stats_complete(struct rsxx_cardinfo *card,
    struct bio *bio,
    unsigned long start_time)
{
 generic_end_io_acct(card->queue, bio_op(bio),
       &card->gendisk->part0, start_time);
}
