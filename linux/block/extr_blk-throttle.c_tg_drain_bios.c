
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int * queued; } ;
struct throtl_grp {struct throtl_service_queue service_queue; } ;
struct bio {int dummy; } ;


 size_t READ ;
 size_t WRITE ;
 int bio_data_dir (struct bio*) ;
 int tg_dispatch_one_bio (struct throtl_grp*,int ) ;
 int throtl_dequeue_tg (struct throtl_grp*) ;
 struct bio* throtl_peek_queued (int *) ;
 struct throtl_grp* throtl_rb_first (struct throtl_service_queue*) ;

__attribute__((used)) static void tg_drain_bios(struct throtl_service_queue *parent_sq)
{
 struct throtl_grp *tg;

 while ((tg = throtl_rb_first(parent_sq))) {
  struct throtl_service_queue *sq = &tg->service_queue;
  struct bio *bio;

  throtl_dequeue_tg(tg);

  while ((bio = throtl_peek_queued(&sq->queued[READ])))
   tg_dispatch_one_bio(tg, bio_data_dir(bio));
  while ((bio = throtl_peek_queued(&sq->queued[WRITE])))
   tg_dispatch_one_bio(tg, bio_data_dir(bio));
 }
}
