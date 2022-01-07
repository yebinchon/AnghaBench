
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkcg_gq {int async_bio_work; int async_bio_lock; int async_bios; int parent; } ;
struct bio {int bi_opf; struct blkcg_gq* bi_blkg; } ;


 int REQ_CGROUP_PUNT ;
 int bio_list_add (int *,struct bio*) ;
 int blkcg_punt_bio_wq ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool __blkcg_punt_bio_submit(struct bio *bio)
{
 struct blkcg_gq *blkg = bio->bi_blkg;


 bio->bi_opf &= ~REQ_CGROUP_PUNT;


 if (!blkg->parent)
  return 0;

 spin_lock_bh(&blkg->async_bio_lock);
 bio_list_add(&blkg->async_bios, bio);
 spin_unlock_bh(&blkg->async_bio_lock);

 queue_work(blkcg_punt_bio_wq, &blkg->async_bio_work);
 return 1;
}
