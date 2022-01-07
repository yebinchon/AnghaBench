
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_service_queue {int * queued; int * nr_queued; struct throtl_service_queue* parent_sq; } ;
struct throtl_grp {TYPE_1__* td; int * qnode_on_parent; struct throtl_service_queue service_queue; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {scalar_t__* nr_queued; } ;


 int BUG_ON (int) ;
 int blkg_put (int ) ;
 struct throtl_grp* sq_to_tg (struct throtl_service_queue*) ;
 int start_parent_slice_with_credit (struct throtl_grp*,struct throtl_grp*,int) ;
 int tg_to_blkg (struct throtl_grp*) ;
 int throtl_add_bio_tg (struct bio*,int *,struct throtl_grp*) ;
 int throtl_charge_bio (struct throtl_grp*,struct bio*) ;
 struct bio* throtl_pop_queued (int *,struct throtl_grp**) ;
 int throtl_qnode_add_bio (struct bio*,int *,int *) ;
 int throtl_trim_slice (struct throtl_grp*,int) ;

__attribute__((used)) static void tg_dispatch_one_bio(struct throtl_grp *tg, bool rw)
{
 struct throtl_service_queue *sq = &tg->service_queue;
 struct throtl_service_queue *parent_sq = sq->parent_sq;
 struct throtl_grp *parent_tg = sq_to_tg(parent_sq);
 struct throtl_grp *tg_to_put = ((void*)0);
 struct bio *bio;







 bio = throtl_pop_queued(&sq->queued[rw], &tg_to_put);
 sq->nr_queued[rw]--;

 throtl_charge_bio(tg, bio);
 if (parent_tg) {
  throtl_add_bio_tg(bio, &tg->qnode_on_parent[rw], parent_tg);
  start_parent_slice_with_credit(tg, parent_tg, rw);
 } else {
  throtl_qnode_add_bio(bio, &tg->qnode_on_parent[rw],
         &parent_sq->queued[rw]);
  BUG_ON(tg->td->nr_queued[rw] <= 0);
  tg->td->nr_queued[rw]--;
 }

 throtl_trim_slice(tg, rw);

 if (tg_to_put)
  blkg_put(tg_to_blkg(tg_to_put));
}
