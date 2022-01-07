
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {scalar_t__ queuedata; } ;
struct drbd_device {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int blk_qc_t ;


 int BLK_QC_T_NONE ;
 int D_ASSERT (struct drbd_device*,int ) ;
 int IS_ALIGNED (int ,int) ;
 int __drbd_make_request (struct drbd_device*,struct bio*,unsigned long) ;
 int blk_queue_split (struct request_queue*,struct bio**) ;
 int inc_ap_bio (struct drbd_device*) ;
 unsigned long jiffies ;

blk_qc_t drbd_make_request(struct request_queue *q, struct bio *bio)
{
 struct drbd_device *device = (struct drbd_device *) q->queuedata;
 unsigned long start_jif;

 blk_queue_split(q, &bio);

 start_jif = jiffies;




 D_ASSERT(device, IS_ALIGNED(bio->bi_iter.bi_size, 512));

 inc_ap_bio(device);
 __drbd_make_request(device, bio, start_jif);
 return BLK_QC_T_NONE;
}
