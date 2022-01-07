
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int discard_granularity; int discard_alignment; int max_discard_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;
struct bio_set {int dummy; } ;
struct TYPE_4__ {unsigned int bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
typedef unsigned int sector_t ;


 int GFP_NOIO ;
 int bio_allowed_max_sectors (struct request_queue*) ;
 unsigned int bio_sectors (struct bio*) ;
 struct bio* bio_split (struct bio*,unsigned int,int ,struct bio_set*) ;
 unsigned int max (int,unsigned int) ;
 unsigned int min (int ,int ) ;
 unsigned int sector_div (unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct bio *blk_bio_discard_split(struct request_queue *q,
      struct bio *bio,
      struct bio_set *bs,
      unsigned *nsegs)
{
 unsigned int max_discard_sectors, granularity;
 int alignment;
 sector_t tmp;
 unsigned split_sectors;

 *nsegs = 1;


 granularity = max(q->limits.discard_granularity >> 9, 1U);

 max_discard_sectors = min(q->limits.max_discard_sectors,
   bio_allowed_max_sectors(q));
 max_discard_sectors -= max_discard_sectors % granularity;

 if (unlikely(!max_discard_sectors)) {

  return ((void*)0);
 }

 if (bio_sectors(bio) <= max_discard_sectors)
  return ((void*)0);

 split_sectors = max_discard_sectors;





 alignment = (q->limits.discard_alignment >> 9) % granularity;

 tmp = bio->bi_iter.bi_sector + split_sectors - alignment;
 tmp = sector_div(tmp, granularity);

 if (split_sectors > tmp)
  split_sectors -= tmp;

 return bio_split(bio, split_sectors, GFP_NOIO, bs);
}
