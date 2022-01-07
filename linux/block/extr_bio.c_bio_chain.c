
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {scalar_t__ bi_end_io; struct bio* bi_private; } ;


 int BUG_ON (int) ;
 scalar_t__ bio_chain_endio ;
 int bio_inc_remaining (struct bio*) ;

void bio_chain(struct bio *bio, struct bio *parent)
{
 BUG_ON(bio->bi_private || bio->bi_end_io);

 bio->bi_private = parent;
 bio->bi_end_io = bio_chain_endio;
 bio_inc_remaining(parent);
}
