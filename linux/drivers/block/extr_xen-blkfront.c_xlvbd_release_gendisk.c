
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct blkfront_ring_info {int work; int callback; } ;
struct blkfront_info {unsigned int nr_rings; TYPE_1__* gd; int * rq; int tag_set; struct blkfront_ring_info* rinfo; } ;
struct TYPE_3__ {unsigned int first_minor; unsigned int minors; } ;


 int blk_cleanup_queue (int *) ;
 int blk_mq_free_tag_set (int *) ;
 int blk_mq_stop_hw_queues (int *) ;
 int del_gendisk (TYPE_1__*) ;
 int flush_work (int *) ;
 int gnttab_cancel_free_callback (int *) ;
 int put_disk (TYPE_1__*) ;
 int xlbd_release_minors (unsigned int,unsigned int) ;

__attribute__((used)) static void xlvbd_release_gendisk(struct blkfront_info *info)
{
 unsigned int minor, nr_minors, i;

 if (info->rq == ((void*)0))
  return;


 blk_mq_stop_hw_queues(info->rq);

 for (i = 0; i < info->nr_rings; i++) {
  struct blkfront_ring_info *rinfo = &info->rinfo[i];


  gnttab_cancel_free_callback(&rinfo->callback);


  flush_work(&rinfo->work);
 }

 del_gendisk(info->gd);

 minor = info->gd->first_minor;
 nr_minors = info->gd->minors;
 xlbd_release_minors(minor, nr_minors);

 blk_cleanup_queue(info->rq);
 blk_mq_free_tag_set(&info->tag_set);
 info->rq = ((void*)0);

 put_disk(info->gd);
 info->gd = ((void*)0);
}
