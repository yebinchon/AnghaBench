
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 int REQ_OP_ZONE_RESET_ALL ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int submit_bio_wait (struct bio*) ;

__attribute__((used)) static int __blkdev_reset_all_zones(struct block_device *bdev, gfp_t gfp_mask)
{
 struct bio *bio = bio_alloc(gfp_mask, 0);
 int ret;


 bio_set_dev(bio, bdev);
 bio_set_op_attrs(bio, REQ_OP_ZONE_RESET_ALL, 0);

 ret = submit_bio_wait(bio);
 bio_put(bio);

 return ret;
}
