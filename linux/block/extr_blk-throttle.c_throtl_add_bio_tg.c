
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int * nr_queued; int * queued; } ;
struct throtl_qnode {int dummy; } ;
struct throtl_grp {int flags; struct throtl_qnode* qnode_on_self; struct throtl_service_queue service_queue; } ;
struct bio {int dummy; } ;


 int THROTL_TG_WAS_EMPTY ;
 int bio_data_dir (struct bio*) ;
 int throtl_enqueue_tg (struct throtl_grp*) ;
 int throtl_qnode_add_bio (struct bio*,struct throtl_qnode*,int *) ;

__attribute__((used)) static void throtl_add_bio_tg(struct bio *bio, struct throtl_qnode *qn,
         struct throtl_grp *tg)
{
 struct throtl_service_queue *sq = &tg->service_queue;
 bool rw = bio_data_dir(bio);

 if (!qn)
  qn = &tg->qnode_on_self[rw];







 if (!sq->nr_queued[rw])
  tg->flags |= THROTL_TG_WAS_EMPTY;

 throtl_qnode_add_bio(bio, qn, &sq->queued[rw]);

 sq->nr_queued[rw]++;
 throtl_enqueue_tg(tg);
}
