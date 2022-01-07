
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xenbus_device {int nodename; int dev; } ;
struct blkfront_ring_info {struct blk_shadow* shadow; } ;
struct blkfront_info {unsigned int nr_rings; scalar_t__ connected; int tag_set; int bio_list; int requests; struct blkfront_ring_info* rinfo; } ;
struct blk_shadow {TYPE_1__* request; } ;
struct bio_list {int tail; int * head; } ;
struct TYPE_3__ {int cmd_flags; int * bio; int biotail; int queuelist; } ;


 scalar_t__ BLKIF_STATE_CONNECTED ;
 unsigned int BLK_RING_SIZE (struct blkfront_info*) ;
 int BLK_STS_OK ;
 int INIT_LIST_HEAD (int *) ;
 int REQ_FUA ;
 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ REQ_OP_FLUSH ;
 scalar_t__ REQ_OP_SECURE_ERASE ;
 int bio_list_init (int *) ;
 int bio_list_merge (int *,struct bio_list*) ;
 int blk_mq_end_request (TYPE_1__*,int ) ;
 int blk_mq_update_nr_hw_queues (int *,unsigned int) ;
 int blkif_free (struct blkfront_info*,int) ;
 int dev_dbg (int *,char*,int ) ;
 struct blkfront_info* dev_get_drvdata (int *) ;
 int list_add (int *,int *) ;
 scalar_t__ req_op (TYPE_1__*) ;
 int talk_to_blkback (struct xenbus_device*,struct blkfront_info*) ;

__attribute__((used)) static int blkfront_resume(struct xenbus_device *dev)
{
 struct blkfront_info *info = dev_get_drvdata(&dev->dev);
 int err = 0;
 unsigned int i, j;

 dev_dbg(&dev->dev, "blkfront_resume: %s\n", dev->nodename);

 bio_list_init(&info->bio_list);
 INIT_LIST_HEAD(&info->requests);
 for (i = 0; i < info->nr_rings; i++) {
  struct blkfront_ring_info *rinfo = &info->rinfo[i];
  struct bio_list merge_bio;
  struct blk_shadow *shadow = rinfo->shadow;

  for (j = 0; j < BLK_RING_SIZE(info); j++) {

   if (!shadow[j].request)
    continue;




   if (req_op(shadow[j].request) == REQ_OP_FLUSH ||
       req_op(shadow[j].request) == REQ_OP_DISCARD ||
       req_op(shadow[j].request) == REQ_OP_SECURE_ERASE ||
       shadow[j].request->cmd_flags & REQ_FUA) {







    list_add(&shadow[j].request->queuelist, &info->requests);
    continue;
   }
   merge_bio.head = shadow[j].request->bio;
   merge_bio.tail = shadow[j].request->biotail;
   bio_list_merge(&info->bio_list, &merge_bio);
   shadow[j].request->bio = ((void*)0);
   blk_mq_end_request(shadow[j].request, BLK_STS_OK);
  }
 }

 blkif_free(info, info->connected == BLKIF_STATE_CONNECTED);

 err = talk_to_blkback(dev, info);
 if (!err)
  blk_mq_update_nr_hw_queues(&info->tag_set, info->nr_rings);







 return err;
}
