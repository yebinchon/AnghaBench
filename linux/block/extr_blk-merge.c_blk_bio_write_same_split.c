
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_write_same_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;
struct bio_set {int dummy; } ;
struct bio {int dummy; } ;


 int GFP_NOIO ;
 scalar_t__ bio_sectors (struct bio*) ;
 struct bio* bio_split (struct bio*,scalar_t__,int ,struct bio_set*) ;

__attribute__((used)) static struct bio *blk_bio_write_same_split(struct request_queue *q,
         struct bio *bio,
         struct bio_set *bs,
         unsigned *nsegs)
{
 *nsegs = 1;

 if (!q->limits.max_write_same_sectors)
  return ((void*)0);

 if (bio_sectors(bio) <= q->limits.max_write_same_sectors)
  return ((void*)0);

 return bio_split(bio, q->limits.max_write_same_sectors, GFP_NOIO, bs);
}
